# play sound
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 12 1.7

# show actionbar
execute positioned 0 64 0 run title @a[distance=..200] actionbar {"color":"dark_purple","font":"minecraft:alt","bold":"true","text":"RESTORE"}

# tag markers that have crystals
execute as @e[type=minecraft:armor_stand,tag=crystal_marker] at @s if block ~ ~ ~ minecraft:air unless entity @e[type=minecraft:end_crystal,distance=..3] run tag @s add restorable

# summon end crystal with base at location
execute at @e[type=minecraft:armor_stand,tag=crystal_marker,tag=restorable,limit=1,sort=random] run summon minecraft:end_crystal ~ ~ ~ {Tags:["new_summon"],ShowBottom:1b}

# summon NoAI shulker highlighter
execute as @e[type=minecraft:end_crystal,tag=new_summon] at @s run summon minecraft:shulker ~ ~ ~ {Tags:["highlighter"],NoAI:1b,Silent:1b,DeathTime:19,DeathLootTable:"minecraft:empty"}

# join shulker to dragon team
team join dragon @e[type=minecraft:shulker,tag=highlighter]

# give glowing to shulker
effect give @e[type=minecraft:shulker,tag=highlighter] minecraft:glowing 99999

# play particles and sound at end crystal location
execute as @e[type=minecraft:end_crystal,tag=new_summon] at @s run particle minecraft:explosion ~ ~ ~ 2.5 2.5 2.5 0 16
execute as @e[type=minecraft:end_crystal,tag=new_summon] at @s run playsound minecraft:block.end_gateway.spawn block @a ~ ~ ~ 6 1

# remove tag from end crystal
tag @e[type=minecraft:end_crystal] remove new_summon

# remove tag from markers
tag @e[type=minecraft:armor_stand,tag=crystal_marker] remove restorable

# schedule highlighter removal
schedule function boss_fight:dragon/kill_highlighter 8s