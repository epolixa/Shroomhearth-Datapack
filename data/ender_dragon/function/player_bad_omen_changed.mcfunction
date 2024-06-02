
# Executes from a player who changed their bad omen level on the main end island

# Reset trigger
advancement revoke @s only ender_dragon:player_bad_omen_changed

say player bad omen changed

# Recalculate omen_level
schedule function ender_dragon:player_bad_omen_changed_scheduled 1t