# play effects
particle minecraft:witch ~ ~1 ~ 3 1 3 0 64 force

# play sound
playsound minecraft:entity.wither.spawn hostile @a[distance=0..] ~ ~ ~ 13 1.8

# summon mobs for each player
execute positioned 0 64 0 as @a[distance=..200] run function boss_fight:summon_random_mob

# tag mobs
execute positioned 0 64 0 as @e[type=#boss_fight:dragon_summon,distance=..3] run tag @s add dragon_summon
execute positioned 0 64 0 as @e[type=#boss_fight:dragon_summon,distance=..3] run tag @s add new_summon

# fix data for certain mobs
execute as @e[type=#boss_fight:piglins,tag=dragon_summon,tag=new_summon] run data merge entity @s {IsImmuneToZombification:1b}

# spread mobs out
execute positioned 0 64 0 run spreadplayers 0 0 6 36 false @e[type=!minecraft:shulker,tag=new_summon]

# play particles on summoned mobs
execute as @e[tag=new_summon] at @s run particle minecraft:dragon_breath ~ ~1 ~ 1 1 1 0.01 40

# remove new spawn tags
tag @e[tag=dragon_summon] remove new_summon
