# Check if the player has died
execute as @a[scores={death_count=1..}] run function shroomhearth:player_died

# Check if the player has respawned after death
execute as @a[tag=!respawned,scores={time_since_death=1..}] run function shroomhearth:player_respawned

# Warped Fungus on a Stick trigger detection
execute as @a[scores={used_warped_fungus_on_a_stick=1..}] at @s run function shroomhearth:used_warped_fungus_on_a_stick

# Goat horn trigger detection
execute as @a[scores={used_goat_horn=1..}] at @s run function shroomhearth:used_goat_horn

# Porcelain tick functions - execute if a player exists
execute if entity @p run function shroomhearth:porcelain/tick

# Cooperative sleep - only run when more than one player is online
execute if score player_count shroomhearth matches 2.. as @a[tag=sleeping] run function sleeping:tick

# Spawn Eggs from Spawners - execute if a Spawner item entity exists
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spawner"}}] at @s run function shroomhearth:replace_spawner_item_with_spawn_egg

# Clone random experience orb - execute if Spores of Experience is active
execute if score spores_of_experience shroomhearth matches 1.. if predicate shroomhearth:random_chance_50 as @e[type=minecraft:experience_orb,tag=!double_xp,limit=1,sort=random] at @s run function harmony:spores/experience/double_experience_orb

# Some relic enchantments require execution every tick
function shroomhearth:stories/relics/tick

# Misc XP - execute as item entities that have just appeared, at those items, as players within 6 blocks of those items
# keeping this disabled for now, in case we ever get a mined_block trigger
#execute as @e[type=item,nbt={Age:0s},limit=1] at @s as @a[distance=..6] run function extra_xp:tick