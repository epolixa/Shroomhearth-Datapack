## SETUP SAFE - only sets up objectives that are reset and re-calculated every tick or non-volatile + gamerules

# Setup dummy bityard player & core objectives
scoreboard objectives remove playerCount
scoreboard objectives add playerCount dummy
scoreboard players set bityard playerCount 0

# Call modules setup functions
function end_crystal_ward:setup
function multi_sleep:setup
function drop_item:setup
function misc_xp:setup
function color_names:setup
function stat_display:setup
function porcelain:setup

# Gamerules
function bityard:setup_gamerules