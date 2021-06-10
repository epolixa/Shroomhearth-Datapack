# play sound
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 12 2

# show actionbar
execute positioned 0 64 0 run title @a[distance=..200] actionbar {"color":"dark_purple","font":"minecraft:alt","bold":true,"text":"PILLAR"}

# adapt marker count
function boss_fight:dragon/adapt_markers

# spread summon markers
execute in minecraft:the_end run spreadplayers 0 0 1 40 under 64 false @e[type=minecraft:armor_stand,tag=summon_marker]

# create pillars of crying obsidian at marker position
execute as @e[type=minecraft:armor_stand,tag=summon_marker] at @s run function boss_fight:dragon/powers/build_pillar

# keep immediate area around dragon clear of pillars
execute positioned 0 64 0 run fill ~-8 ~-6 ~-8 ~8 ~3 ~8 minecraft:air replace minecraft:crying_obsidian
