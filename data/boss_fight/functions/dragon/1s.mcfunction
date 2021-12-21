# update bossbar player visibility
bossbar set boss_fight:dragon_rage players @a[distance=..128]

# run dragon functions
execute as @e[type=minecraft:ender_dragon] at @s run function boss_fight:dragon/1s_dragon

# Dragon kill fix - if a player is near the main end island portal and there is no dragon then manually run dragon slain function
execute as @p[distance=..64] unless entity @e[type=minecraft:ender_dragon] run function boss_fight:dragon/player_kill
