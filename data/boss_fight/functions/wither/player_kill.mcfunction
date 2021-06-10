# announce
tellraw @a [{"text":"A "}, {"color":"#6b8a8a","text":"Wither"}, {"text":" was slain by "}, {"selector": "@s"}]

# kill all wither summons
kill @e[tag=wither_summon]

# revoke
advancement revoke @s only boss_fight:wither/player_kill