# gamerules
function bityard:setup_gamerules

# bityard - shared objective for dummy global variables
scoreboard objectives add bityard dummy

# lcg - pseudo random number generator
function bityard:lcg/setup

# setup playerCount variable
scoreboard players set playerCount bityard 0