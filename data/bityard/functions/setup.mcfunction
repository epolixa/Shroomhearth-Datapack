# setup playerCount objective
scoreboard objectives remove playerCount
scoreboard objectives add playerCount dummy
scoreboard players set bityard playerCount 0

# lcg - pseudo random number generator
function bityard:lcg/setup