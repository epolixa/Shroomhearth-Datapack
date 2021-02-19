# announcement
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]

# set dragonSlain
scoreboard players set bityard dragonSlain 1

# revoke advancement
advancement revoke @s only boss_fight:killed_dragon

# kill end crystal marker armor stands
kill @e[type=minecraft:armor_stand,tag=crystal_marker]

# kill summon markers
kill @e[type=minecraft:armor_stand,tag=summon_marker]

# fix for slimes so they don't make smaller ones when they die
execute as @e[type=#boss_fight:slimes,tag=dragon_summon] run data merge entity @s {Size:0}

# kill all dragon summons
kill @e[tag=dragon_summon]

# grant all players in range with dragon buff
execute positioned 0 64 0 as @a[distance=..200] run function boss_fight:dragon_buff

# setblock dragon egg at pedestal
setblock 0 64 0 minecraft:dragon_egg

# if only player in the end, grant advancement
execute unless entity @p[distance=1..] run advancement grant @s only boss_fight:legendary_battle

# revoke advancement
advancement revoke @s only boss_fight:killed_dragon