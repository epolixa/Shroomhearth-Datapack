# Executor: Server every second if an ender dragon is currently active (ender_dragon_slain:0)
# Position: The main end portal

#tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/1s] Ender Dragon is active..."}]


# Run Ender Dragon functions
execute as @e[type=minecraft:ender_dragon] at @s run function shroomhearth:ender_dragon/1s_ender_dragon

# Play particles on carved drops
execute as @e[type=minecraft:item,tag=carve] at @s run particle minecraft:ominous_spawning ~ ~0.4 ~ 0 0 0 0.5 3 force

# Dragon kill fix - if a player is near the main end island portal and there is no ender dragon then manually run dragon slain function
execute as @p[distance=..64] unless entity @e[type=minecraft:ender_dragon] run function shroomhearth:ender_dragon/player_killed_omen_ender_dragon
execute as @p[distance=..64] unless entity @e[type=minecraft:ender_dragon] run function shroomhearth:ender_dragon/player_killed_ender_dragon