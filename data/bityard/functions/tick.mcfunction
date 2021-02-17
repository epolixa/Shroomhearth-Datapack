# Community - only run when more than one player is online
execute if score bityard playerCount matches 2.. run function community:main

# Multiplayer sleep - only run when more than one player is online
execute if score bityard playerCount matches 2.. run function sleeping:main

# Misc XP - execute as item entities that have just appeared, at those items, as players within 6 blocks of those items
# needs to happen every tick to track exactly when a player harvested a crop
execute as @e[type=item,nbt={Age:0s},limit=1] at @s as @a[distance=..6] run function extra_xp:tick

# Spawn Eggs from Mob Spawners - execute if a mob spawner item entity exists
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] run function spawner_eggs:main

# Wandering Trader announcement - run if a new wandering trader appears
execute if entity @p in minecraft:overworld as @e[type=wandering_trader,distance=0..,tag=!announced] at @s run function wandering_trader:wandering_trader

# Porcelain mechanics
execute if entity @p run function porcelain:main