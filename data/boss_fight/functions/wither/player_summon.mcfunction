# announce
tellraw @a [{"text":"A "}, {"color":"#6b8a8a","text":"Wither"}, {"text":" was summoned by "}, {"selector": "@p"}]

# preset rage so wither instantly spawns skeletons the first time 
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] rage 16

# revoke
advancement revoke @s only boss_fight:wither/player_summon