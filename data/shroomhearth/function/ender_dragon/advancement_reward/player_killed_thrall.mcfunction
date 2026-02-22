# Executor: A player that has killed a Thrall
# Position: The player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/player_killed_thrall] "},{"selector":"@s"},{"text":" killed a Thrall"}]


# revoke trigger
advancement revoke @s only shroomhearth:ender_dragon/player_killed_thrall

# increment score
scoreboard players add @s ender_dragon_stats_mobs 1