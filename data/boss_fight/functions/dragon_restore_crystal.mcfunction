# play effects
particle minecraft:witch ~ ~1 ~ 3 1 3 0 64 force

# play sound
playsound minecraft:entity.zombie_villager.converted hostile @a[distance=0..] ~ ~ ~ 13 1.8

# summon end crystal with base is not one at location
execute at @e[type=minecraft:armor_stand,tag=crystal_marker,limit=1,sort=random] unless entity @e[type=minecraft:end_crystal,distance=..3] run summon minecraft:end_crystal ~ ~ ~ {Tags:["new_summon"],ShowBottom:1b}

# summon NoAI shulker highlighter
execute as @e[type=minecraft:end_crystal,tag=new_summon] at @s run summon minecraft:shulker ~ ~-1 ~ {Tags:["highlighter"],NoAI:1b,Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty"}

# join shulker to dragon team
team join dragon @e[type=minecraft:shulker,tag=highlighter]

# give glowing to shulker
effect give @e[type=minecraft:shulker,tag=highlighter] minecraft:glowing 99999

# play particles and sound at end crystal location
execute as @e[type=minecraft:end_crystal,tag=new_summon] at @s run particle minecraft:explosion ~ ~ ~ 2.5 2.5 2.5 0 16
execute as @e[type=minecraft:end_crystal,tag=new_summon] at @s run playsound minecraft:block.end_gateway.spawn block @a ~ ~ ~ 1 1

# remove tag from end crystal
tag @e[type=minecraft:end_crystal] remove new_summon

# schedule highlighter removal
schedule function boss_fight:kill_highlighter 4s