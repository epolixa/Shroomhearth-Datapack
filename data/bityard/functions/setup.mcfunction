# setup dummy bityard player & core objectives
scoreboard objectives remove playerCount
scoreboard objectives add playerCount dummy
scoreboard players set bityard playerCount 0

# rng - fake random number generator per player, ten-tick clock
scoreboard objectives remove rng
scoreboard objectives add rng minecraft.custom:minecraft.play_one_minute