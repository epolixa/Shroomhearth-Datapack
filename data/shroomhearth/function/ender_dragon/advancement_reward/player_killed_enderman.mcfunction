# Executor: A Player who killed an enderman
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/player_killed_enderman] "},{"selector":"@s"},{"text":" killed an Enderman"}]


# revoke trigger
advancement revoke @s only shroomhearth:ender_dragon/player_killed_enderman

# increment score
scoreboard players add @s ender_dragon_stats_endermen 1