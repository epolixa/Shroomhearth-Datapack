# Executes from the context of a player who recently moved. 

# Tag the player as moved so that their echo tracker can update position data on next pulse.
tag @s[gamemode=!spectator] add update_echo_tracker