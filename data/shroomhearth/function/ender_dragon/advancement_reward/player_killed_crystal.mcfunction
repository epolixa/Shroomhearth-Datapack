# Executor: A Player who killed an ender crystal
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/player_killed_crystal] "},{"selector":"@s"},{"text":" killed an Ender Crystal"}]


# revoke trigger
advancement revoke @s only shroomhearth:ender_dragon/player_killed_crystal

# increment score
scoreboard players add @s ender_dragon_stats_end_crystals 1