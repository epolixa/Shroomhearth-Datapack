tellraw @a [{"text":"The "}, {"color":"purple","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]
advancement revoke @s only boss_announcements:killed_dragon

# grant all players in range with dragon buff
execute at @s as @a[distance=..256] run function boss_announcements:dragon_buff