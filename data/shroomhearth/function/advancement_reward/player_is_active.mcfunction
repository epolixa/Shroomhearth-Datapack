# Executor: A player who has a non-zero movement tracking score
# Position: The player entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:advancement_reward/player_is_active] "},{"selector":"@s"},{"text":" is active"}]


# Reset player_inactive
scoreboard players reset @s player_inactive

# Remove afk tag
tag @s[tag=afk] remove afk

# Reset distance scores and update echoes position storage
execute if predicate shroomhearth:move_one_cm run function shroomhearth:player_move_one_cm

# Revoke advancement
advancement revoke @s only shroomhearth:player_is_active