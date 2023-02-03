# play sound
playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 12 0.7

# show actionbar
title @a[predicate=boss_fight:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"SUMMON"}

# spread out markers
execute in minecraft:the_end run spreadplayers 0 0 1 40 under 64 false @e[type=minecraft:armor_stand,tag=summon_marker]

# adapt marker count
function boss_fight:dragon/adapt_markers

# summon mobs from markers
execute as @e[type=minecraft:armor_stand,tag=summon_marker] at @s run function boss_fight:dragon/powers/summon_random_mob

# expend rage
scoreboard players remove @s rage 48