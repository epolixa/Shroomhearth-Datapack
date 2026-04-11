# Tracks number of pulses (seconds) that the echoes has been active
scoreboard objectives add echoes_pulses dummy


# Objective for fake player globals
scoreboard objectives add shroomhearth.echoes dummy

# The length of the tracked players list in storage
scoreboard players set echoes_players_length shroomhearth.echoes 0

# Tracks the current index while iterating through the tracked player list in storage
scoreboard players set echoes_players_index shroomhearth.echoes 0