# Execute functions when the player logs in
execute as @a[scores={playerLeft=1..}] run function shroomhearth:player_relog

# recalculate playerCount - number of online players
scoreboard players set playerCount shroomhearth 0
execute as @a run scoreboard players add playerCount shroomhearth 1

# Porcelain 1s functions
execute if entity @p run function porcelain:1s

# Boss fight - run as boss mobs if a player is online
execute if score dragonSlain shroomhearth matches 0 in minecraft:the_end positioned 0 64 0 run function ender_dragon:1s

# Mob Warding - run as a mobs that can be warded
execute as @e[type=#mob_warding:wardable,tag=!unwardable] at @s run function mob_warding:1s_mob

# End Crystal range vision - run as players wearing a mob head
execute as @a[predicate=mob_warding:end_crystal_vision] at @s run function mob_warding:1s_player

# Wandering Trader announcement - run for unnannounced traders in the overworld
execute in minecraft:overworld as @e[type=wandering_trader,distance=0..,tag=!announced] at @s run function wandering_trader:1s

# Item Skins - run for unrolled mobs
execute as @e[type=#relics:armed,tag=!relic_checked] run function relics:1s

# Community - only run when more than one player is online
execute if score playerCount shroomhearth matches 2.. run function community:1s

# favors - execute if there are active favors
execute if score favActive shroomhearth matches 1.. run function community:favor/1s

# recall whistle - process cast time
execute as @a[tag=recalling] at @s run function recall:recalling

# sitting - clean up empty seats
execute if entity @e[tag=seat] run function sitting:1s

# Echoes - tracking players and playing marker effects
function echoes:pulse

# re-schedule
schedule function shroomhearth:1s 1s