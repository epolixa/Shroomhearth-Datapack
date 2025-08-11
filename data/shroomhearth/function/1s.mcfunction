# recalculate playerCount - number of online players
scoreboard players set playerCount shroomhearth 0
execute as @a run scoreboard players add playerCount shroomhearth 1

# Porcelain 1s functions
execute if entity @p run function porcelain:1s

# Ender Dragon - run inside the end if the dragon is alive
execute if score dragonSlain shroomhearth matches 0 in minecraft:the_end positioned 0 64 0 run function ender_dragon:1s

# Mob Warding - run as a mobs that can be warded
execute as @e[type=#mob_warding:wardable,tag=!unwardable] at @s run function mob_warding:1s_mob

# End Crystal range vision - run as players wearing a mob head
execute as @a[predicate=mob_warding:end_crystal_vision] at @s run function mob_warding:1s_player

# Wandering Trader announcement - run for unnannounced traders in the overworld
execute in minecraft:overworld as @e[type=wandering_trader,distance=0..,tag=!announced] at @s run function wandering_trader:1s

# Item Skins - run for unrolled mobs
# disabled for now, might be removed later
#execute as @e[type=#relics:armed,tag=!relic_checked] run function relics:1s

# Community - only run when more than one player is online
execute if score playerCount shroomhearth matches 2.. run function community:1s

# favors - execute if there are active favors
execute if score favActive shroomhearth matches 1.. run function community:favor/1s

# recall whistle - process cast time
execute as @a[tag=recalling] at @s run function recall:recalling

# sitting - clean up empty seats
execute as @e[tag=seat_interaction] at @s if block ~ ~-0.0625 ~ #seats:intangible run function seats:drop_seat

# Echoes - tracking players and playing marker effects
function echoes:pulse

# Assign allays to special team for no collision
execute as @e[type=minecraft:allay,tag=!no_collide] run function allay_bottle:1s

# Easter - check all rabbits for easter egg
#execute as @e[type=minecraft:rabbit,tag=!dropped_egg,nbt=!{MoreCarrotTicks:0},limit=1,sort=random] at @s run function easter:drop_painted_egg

# Tick Ender Tome entities
execute as @e[tag=ender_tome] at @s run function ender_tome:1s_ender_tome

# Debug marker entities
execute if entity @p[tag=debug_markers] at @e[type=minecraft:marker] run particle minecraft:block_marker{block_state:{Name:"minecraft:structure_void"}}

# re-schedule
schedule function shroomhearth:1s 1s