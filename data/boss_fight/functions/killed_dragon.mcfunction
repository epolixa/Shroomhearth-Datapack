# announcement
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]
advancement revoke @s only boss_fight:killed_dragon

# grant all players in range with dragon buff
execute at @s as @a[distance=..256] run function boss_fight:dragon_buff

# setblock dragon egg at pedestal
setblock 0 64 0 minecraft:dragon_egg