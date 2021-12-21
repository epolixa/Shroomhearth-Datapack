# play sound
playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 12 1.6

# show actionbar
execute positioned 0 64 0 run title @a[distance=..128] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"TRANSMUTE"}

# adapt marker count
function boss_fight:dragon/adapt_markers

# spread out markers
execute in minecraft:the_end run spreadplayers 0 0 1 40 under 64 false @e[type=minecraft:armor_stand,tag=summon_marker]

# summon mobs from markers
execute as @e[type=minecraft:armor_stand,tag=summon_marker] at @s run function boss_fight:dragon/powers/transmute_random_blocks

# expend rage
scoreboard players remove @s rage 48