# play sound
playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 12 0.7

# spread out markers
execute in minecraft:the_end run spreadplayers 0 0 6 36 false @e[type=minecraft:armor_stand,tag=summon_marker]

# summon mobs from markers
execute as @e[type=minecraft:armor_stand,tag=summon_marker] at @s run function boss_fight:summon_random_mob