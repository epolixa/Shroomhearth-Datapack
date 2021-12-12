execute as @e[tag=pillar_marker] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:air replace minecraft:crying_obsidian
execute as @e[type=#boss_fight:slimes,tag=pillar_gravity] run data merge entity @s {Size:0}
kill @e[tag=pillar_gravity]
kill @e[tag=pillar_marker]