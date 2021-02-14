# Setup dummy bityard player & core objectives
scoreboard objectives remove playerCount
scoreboard objectives add playerCount dummy
scoreboard players set bityard playerCount 0

# Call modules setup functions
function end_crystals:setup
function sleeping:setup
function item_interactions:setup
function misc_xp:setup
function stat_display:setup
function porcelain:setup

# Gamerules
function bityard:setup_gamerules