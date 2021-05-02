# gamerules
function bityard:setup_gamerules

# lcg - pseudo random number generator
function bityard:lcg/setup

# setup playerCount objective
scoreboard objectives remove playerCount
scoreboard objectives add playerCount dummy
scoreboard players set bityard playerCount 0