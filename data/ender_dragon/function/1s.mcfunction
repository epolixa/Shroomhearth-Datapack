# Executes every second from the context of the server localized at the main end portal if an ender dragon is currently active (dragonSlain:0)

# Run Ender Dragon functions
execute as @e[type=minecraft:ender_dragon] at @s run function ender_dragon:1s_ender_dragon

# Dragon kill fix - if a player is near the main end island portal and there is no ender dragon then manually run dragon slain function
execute as @p[distance=..64] unless entity @e[type=minecraft:ender_dragon] run function ender_dragon:player_kill
