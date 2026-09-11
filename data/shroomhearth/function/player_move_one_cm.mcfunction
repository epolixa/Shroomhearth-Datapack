# Executor: A player who has a non-zero movement tracking score
# Position: The player entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:player_move_one_cm] "},{"selector":"@s"},{"text":" moved"}]


# Reset scores
function shroomhearth:reset_move_one_cm_scores

# Update the player's positional data in the echoes storage
function shroomhearth:echoes/m_update_player_storage with entity @s