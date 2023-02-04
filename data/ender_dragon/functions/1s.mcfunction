# update bossbar player visibility
bossbar set ender_dragon:dragon_rage players @a[predicate=ender_dragon:on_main_end_island]

# run dragon functions
execute as @e[type=minecraft:ender_dragon] at @s run function ender_dragon:1s_dragon

# Dragon kill fix - if a player is near the main end island portal and there is no dragon then manually run dragon slain function
execute as @p[distance=..64] unless entity @e[type=minecraft:ender_dragon] run function ender_dragon:player_kill
