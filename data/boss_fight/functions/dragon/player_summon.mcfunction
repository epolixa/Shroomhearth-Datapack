# announce
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]

# create bossbar
bossbar add boss_fight:dragon_rage {"font":"minecraft:alt","bold":true,"text":"RAGE"}
bossbar set boss_fight:dragon_rage color red
bossbar set boss_fight:dragon_rage max 25
execute in minecraft:the_end positioned 0 64 0 run bossbar set boss_fight:dragon_rage players @a[distance=..190]
bossbar set boss_fight:dragon_rage style progress
bossbar set boss_fight:dragon_rage value 0
bossbar set boss_fight:dragon_rage visible true

# revoke trigger
advancement revoke @s only boss_fight:dragon/player_summon