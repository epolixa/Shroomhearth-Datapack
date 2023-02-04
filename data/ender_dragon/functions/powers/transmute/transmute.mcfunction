# play sound
playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 12 1.6

# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"TRANSMUTE"}

# adapt marker count
function ender_dragon:adapt_markers

# spread out markers
execute in minecraft:the_end run spreadplayers 0 0 1 40 under 64 false @e[type=minecraft:armor_stand,tag=summon_marker]

# summon mobs from markers
execute as @e[type=minecraft:armor_stand,tag=summon_marker] at @s run function ender_dragon:powers/transmute_random_blocks

# expend rage
scoreboard players remove @s rage 48