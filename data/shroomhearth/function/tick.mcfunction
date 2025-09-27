# warped fungus trigger detection
execute as @a[scores={useWarpedFungusStick=1..}] at @s run function shroomhearth:use_warped_fungus_stick

# porcelain ticking functions
execute if entity @p run function porcelain:tick

# Multiplayer sleep - only run when more than one player is online
execute if score playerCount shroomhearth matches 2.. as @a[tag=sleeping] run function sleeping:tick

# Spawn Eggs from Mob Spawners - execute if a mob spawner item entity exists
execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:spawner"}}] run function spawner_eggs:tick

# Clone random experience orb - execute if double xp favor is active
#execute if score favDoubleXP shroomhearth matches 1.. as @e[type=minecraft:experience_orb,tag=!double_xp,limit=1,sort=random] at @s run function community:favor/double_xp/double_experience_orb
execute if score favDoubleXP shroomhearth matches 1.. if predicate shroomhearth:random_chance_50 as @e[type=minecraft:experience_orb,tag=!double_xp,limit=1,sort=random] at @s run function community:favor/double_xp/double_experience_orb

# Misc XP - execute as item entities that have just appeared, at those items, as players within 6 blocks of those items
# keeping this disabled for now, in case we ever get a mined_block trigger
#execute as @e[type=item,nbt={Age:0s},limit=1] at @s as @a[distance=..6] run function extra_xp:tick