# Tracks number of pulses (seconds) that the echoes has been active
scoreboard objectives remove echoes_pulses


# Objective for fake player globals
scoreboard objectives remove shroomhearth.echoes

# The length of the tracked players list in storage
scoreboard players reset echoes_players_length shroomhearth.echoes

# Tracks the current index while iterating through the tracked player list in storage
scoreboard players reset echoes_players_index shroomhearth.echoes