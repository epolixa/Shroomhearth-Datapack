# Executes every second from the context of the server localized at the main end portal if an ender dragon is currently active (dragonSlain:0)

# Run Ender Dragon functions
execute as @e[type=minecraft:ender_dragon] at @s run function ender_dragon:1s_ender_dragon

# Play particles on carved drops
execute as @e[type=minecraft:item,tag=carve] at @s run particle minecraft:ominous_spawning ~ ~0.5 ~ 0.25 0.25 0.25 0.1 3 force

# Dragon kill fix - if a player is near the main end island portal and there is no ender dragon then manually run dragon slain function
execute as @p[distance=..64] unless entity @e[type=minecraft:ender_dragon] run function ender_dragon:player_killed_omen_ender_dragon
execute as @p[distance=..64] unless entity @e[type=minecraft:ender_dragon] run function ender_dragon:player_killed_ender_dragon