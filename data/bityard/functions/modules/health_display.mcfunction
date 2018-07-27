################################################################
# Health/Level Display
# shows health and level under a player's name on an interval
################################################################

# Reset timer
execute if score Env healthDisplay matches 1200.. run scoreboard players set Env healthDisplay 0

# Toggle between health/level
execute if score Env healthDisplay matches 0 run scoreboard objectives setdisplay belowName playerHealth
execute if score Env healthDisplay matches 600 run scoreboard objectives setdisplay belowName playerLevel

# Increment timer on Env
scoreboard players add Env healthDisplay 1