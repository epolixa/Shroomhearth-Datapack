# play sound
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 12 1.7

# show actionbar
execute positioned 0 64 0 run title @a[distance=..190] actionbar {"color":"dark_purple","font":"minecraft:alt","bold":true,"text":"RESTORE"}

# tag markers that can have crystals
execute as @e[type=minecraft:armor_stand,tag=crystal_marker] at @s if block ~ ~ ~ minecraft:air unless entity @e[type=minecraft:end_crystal,distance=..3] run tag @s add restorable

# summon end crystal with base at location
execute at @e[type=minecraft:armor_stand,tag=crystal_marker,tag=restorable,limit=1,sort=random] run summon minecraft:end_crystal ~ ~ ~ {Tags:["new_summon"],ShowBottom:1b}

# sometimes build a cage around crystal
execute as @e[type=minecraft:end_crystal,tag=new_summon] at @s if predicate boss_fight:random_chance_20 run function boss_fight:dragon/powers/build_cage

# play particles and sound at end crystal location
execute as @e[type=minecraft:end_crystal,tag=new_summon] at @s run particle minecraft:explosion ~ ~ ~ 2.5 2.5 2.5 0 16
execute as @e[type=minecraft:end_crystal,tag=new_summon] at @s run playsound minecraft:block.end_gateway.spawn block @a ~ ~ ~ 6 1

# remove tag from end crystal
tag @e[type=minecraft:end_crystal] remove new_summon

# remove tag from markers
tag @e[type=minecraft:armor_stand,tag=crystal_marker] remove restorable

# expend rage
scoreboard players remove @s rage 64