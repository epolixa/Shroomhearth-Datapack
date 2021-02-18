# announcement
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]

# revoke advancement
advancement revoke @s only boss_fight:killed_dragon

# kill end crystal marker armor stands
kill @e[type=minecraft:armor_stand,tag=crystal_marker]

# kill all dragon summons
kill @e[tag=dragon_summon]

# grant all players in range with dragon buff
execute positioned 0 64 0 as @a[distance=..200] run function boss_fight:dragon_buff

# setblock dragon egg at pedestal
setblock 0 64 0 minecraft:dragon_egg

# revoke advancement
advancement revoke @s only boss_fight:killed_dragon