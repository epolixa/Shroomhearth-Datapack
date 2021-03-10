# porcelain ticking functions
execute if entity @p run function porcelain:tick

# Multiplayer sleep - only run when more than one player is online
execute if score bityard playerCount matches 2.. as @a[tag=sleeping] run function sleeping:tick

# Spawn Eggs from Mob Spawners - execute if a mob spawner item entity exists
execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:spawner"}}] run function spawner_eggs:tick

# Misc XP - execute as item entities that have just appeared, at those items, as players within 6 blocks of those items
# keeping this disabled for now, in case we ever get a mined_block trigger
#execute as @e[type=item,nbt={Age:0s},limit=1] at @s as @a[distance=..6] run function extra_xp:tick