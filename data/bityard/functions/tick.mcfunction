# Spawn Eggs from Mob Spawners - execute if a mob spawner item entity exists
# need to run every tick to detect spawner item entity
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] run function spawner_eggs:main

# Multiplayer sleep - only run when more than one player is online
execute if score bityard playerCount matches 2.. run function sleeping:main

# Misc XP - execute as item entities that have just appeared, at those items, as players within 6 blocks of those items
# needs to happen every tick to track exactly when a player harvested a crop
execute as @e[type=item,nbt={Age:0s},limit=1] at @s as @a[distance=..6] run function extra_xp:tick

# Porcelain mechanics
execute if entity @p run function porcelain:main