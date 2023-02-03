# announce
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]

# reset dragonSlain
scoreboard players set dragonSlain shroomhearth 0

# create bossbar
bossbar add boss_fight:dragon_rage {"font":"minecraft:illageralt","bold":true,"text":"RAGE"}
bossbar set boss_fight:dragon_rage color red
bossbar set boss_fight:dragon_rage max 25
bossbar set boss_fight:dragon_rage players @a[predicate=boss_fight:on_main_end_island]
bossbar set boss_fight:dragon_rage style progress
bossbar set boss_fight:dragon_rage value 0
bossbar set boss_fight:dragon_rage visible true

# capture number of players
execute store result score dragonPlayers shroomhearth if entity @a[predicate=boss_fight:on_main_end_island]

# revoke trigger
advancement revoke @s only boss_fight:dragon/player_summon