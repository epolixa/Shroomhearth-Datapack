# play sound
#playsound minecraft:entity.zombie_villager.converted hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 12 1.7

# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"RESTORE"}

# tag markers that can have crystals
execute as @e[type=minecraft:armor_stand,tag=crystal_marker] at @s if block ~ ~ ~ minecraft:air unless entity @e[type=minecraft:end_crystal,distance=..3] run tag @s add restorable

# summon end crystal with base at location
execute at @e[type=minecraft:armor_stand,tag=crystal_marker,tag=restorable,limit=1,sort=random] run summon minecraft:end_crystal ~ ~ ~ {Tags:["new"],ShowBottom:1b}

# sometimes build a cage around crystal
execute as @e[type=minecraft:end_crystal,tag=new] at @s if predicate ender_dragon:end_crystal_cage_chance run function ender_dragon:powers/restore/build_cage

# play particles and sound at end crystal location
execute as @e[type=minecraft:end_crystal,tag=new] at @s run particle minecraft:explosion ~ ~ ~ 2.5 2.5 2.5 0 16
execute as @e[type=minecraft:end_crystal,tag=new] at @s run playsound minecraft:block.end_gateway.spawn block @a ~ ~ ~ 6 1

# remove tag from end crystal
tag @e[type=minecraft:end_crystal] remove new

# remove tag from markers
tag @e[type=minecraft:armor_stand,tag=crystal_marker] remove restorable

# expend rage
scoreboard players remove @s rage 64