# Executor: a player who just summoned the Ender Dragon
# Position: The player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/summoned_ender_dragon] "},{"selector":"@s"},{"text":" summoned the Ender Dragon"}]


# Revoke trigger
advancement revoke @s only shroomhearth:ender_dragon/summoned_ender_dragon

# Reset ender_dragon_slain since there is now an active Ender Dragon
scoreboard players set ender_dragon_slain shroomhearth.ender_dragon 0

# Capture initial number of players
execute store result score ender_dragon_players shroomhearth.ender_dragon if entity @a[predicate=shroomhearth:ender_dragon/on_main_end_island]