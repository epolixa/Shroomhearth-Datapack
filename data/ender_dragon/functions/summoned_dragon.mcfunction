# announce
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]

# reset dragonSlain
scoreboard players set dragonSlain shroomhearth 0

# create bossbar
bossbar add ender_dragon:dragon_rage {"font":"minecraft:illageralt","bold":true,"text":"RAGE"}
bossbar set ender_dragon:dragon_rage color red
bossbar set ender_dragon:dragon_rage max 25
bossbar set ender_dragon:dragon_rage players @a[predicate=ender_dragon:on_main_end_island]
bossbar set ender_dragon:dragon_rage style progress
bossbar set ender_dragon:dragon_rage value 0
bossbar set ender_dragon:dragon_rage visible true

# capture number of players
execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]

# revoke trigger
advancement revoke @s only ender_dragon:summoned_dragon