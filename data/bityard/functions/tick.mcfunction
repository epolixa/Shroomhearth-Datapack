# Community - only run when more than one player is online
execute if score bityard playerCount matches 2.. run function community:main

# Multiplayer sleep - only run when more than one player is online
execute if score bityard playerCount matches 2.. run function sleeping:main

# Misc XP - execute as item entities that have just appeared, at those items, as players within 6 blocks of those items
# needs to happen every tick to track exactly when a player harvested a crop
execute as @e[type=item,nbt={Age:0s},limit=1] at @s as @a[distance=..6] run function extra_xp:tick

# Spawn Eggs from Mob Spawners - execute if a mob spawner item entity exists
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] run function spawner_eggs:main

# Bleeding particles - execute as players with low health
execute as @a[gamemode=survival,scores={playerHealth=1..10}] run function stat_display:bleeding

# End Crystal Ward - run if a player is online
execute if entity @p run function mob_warding:main

# Wandering Trader announcement - run if a new wandering trader appears
execute if entity @p in minecraft:overworld as @e[type=wandering_trader,distance=0..,tag=!announced] at @s run function wandering_trader:wandering_trader

# Porcelain mechanics
execute if entity @p run function porcelain:main

# rng - reset to 0 after 9 ticks
execute as @a[scores={rng=9..}] at @s run scoreboard players set @s rng 0