# play sound
playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 12 0.7

# show actionbar
execute positioned 0 64 0 run title @a[distance=..200] actionbar {"color":"dark_purple","font":"minecraft:alt","bold":"true","text":"STRIKE"}

# adapt marker count
function boss_fight:dragon/adapt_markers

# spread summon markers
execute in minecraft:the_end run spreadplayers 0 0 1 40 under 64 false @e[type=minecraft:armor_stand,tag=summon_marker]

# summon lighting at summon markers
execute as @e[type=armor_stand,tag=summon_marker] at @s run summon minecraft:lightning_bolt ~ ~ ~