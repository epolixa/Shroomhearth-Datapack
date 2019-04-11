# Setup dummy "Env" player & core objectives
# playerCount - flag for number of online players
scoreboard objectives remove playerCount
scoreboard objectives add playerCount dummy
scoreboard players set Env playerCount 0

# healthDisplay - timer for displayed health/level
scoreboard objectives remove healthDisplay
scoreboard objectives add healthDisplay dummy
scoreboard players set Env healthDisplay 0


function bityard:setup_objectives


# Call modules setup functions
function end_crystal_ward:setup
function multi_sleep:setup
function drop_item:setup
function ethereal_bonbon:setup
function player_advancements:setup
function color_names:setup