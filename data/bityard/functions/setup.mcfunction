# Call modules setup functions
function end_crystal_ward:setup
function multi_sleep:setup
function drop_item:setup
function ethereal_bonbon:setup
function player_advancements:setup


# Setup dummy "Env" player w/ objectives
# playerCount - flag for number of online players
scoreboard objectives remove playerCount
scoreboard objectives add playerCount dummy
scoreboard players set Env playerCount 0

# healthDisplay - timer for displayed health/level
scoreboard objectives remove healthDisplay
scoreboard objectives add healthDisplay dummy
scoreboard players set Env healthDisplay 0


# Ensure that community score is shown in the tab list
scoreboard objectives setdisplay list community


function bityard:setup_objectives