# play sound
playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 12 0.7

# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"STRIKE"}

# adapt marker count
function ender_dragon:adapt_markers

# spread summon markers
execute in minecraft:the_end run spreadplayers 0 0 1 40 under 64 false @e[type=minecraft:armor_stand,tag=summon_marker]

# give all players brief night vision
effect give @a[predicate=ender_dragon:on_main_end_island] minecraft:night_vision 1

# summon lighting at summon markers
execute as @e[type=armor_stand,tag=summon_marker] at @s run summon minecraft:lightning_bolt ~ ~ ~

# expend rage
scoreboard players remove @s rage 32