# Executor: A player who relogged
# Position: The player entity

# A player is considered to have relogged if they have a non-zero leave_game score.
# This score is incremented the moment they leave the game and is not detected by the advancement until they log back in.

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:player_relog] Player "},{"selector":"@s"},{"color":"white","text":" relogged"}]


# Capture player UUID components
function shroomhearth:score_uuid
function shroomhearth:store_target_uuid

# Inform player about any active events
function harmony:inform_spores

# Reset leave_game
scoreboard players reset @s leave_game

# Reset advancement trigger
advancement revoke @s only shroomhearth:player_relog