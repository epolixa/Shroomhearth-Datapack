# Setup dummy "Env" player & core objectives
# playerCount - flag for number of online players
scoreboard objectives remove playerCount
scoreboard objectives add playerCount dummy
scoreboard players set Env playerCount 0

# Misc/old stuff
function bityard:setup

# Call modules setup functions
function end_crystal_ward:setup
function multi_sleep:setup
function drop_item:setup
function farming_xp:setup
#function voxel_socks:setup
#function ethereal_bonbon:setup
function player_advancements:setup
function color_names:setup
function stat_display:setup
function arena:setup

# Gamerules
function bityard:setup_gamerules