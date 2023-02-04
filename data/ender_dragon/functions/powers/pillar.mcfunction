# play sound
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 12 2

# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"PILLAR"}

# adapt marker count
function ender_dragon:adapt_markers

# spread summon markers
#execute in minecraft:the_end run spreadplayers 0 0 1 40 under 64 false @e[type=minecraft:armor_stand,tag=summon_marker]

# for every marker, create an obsidian pillar at position of random enderman in range
execute as @e[type=minecraft:armor_stand,tag=summon_marker] positioned 0 60 0 as @e[type=minecraft:enderman,limit=1,sort=random,distance=8..40] at @s run function ender_dragon:powers/build_pillar

# expend rage
scoreboard players remove @s rage 32