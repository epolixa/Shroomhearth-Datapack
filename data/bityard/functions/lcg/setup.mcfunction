# linear congruential generator

# setup objectives
scoreboard objectives remove lcg
scoreboard objectives add lcg dummy
scoreboard players set bityard lcg 0

# set lcgModulus manually before calling bityard:lcg/random to use a custom range
scoreboard objectives remove lcgModulus
scoreboard objectives add lcgModulus dummy
scoreboard objectives remove lcgDefModulus
scoreboard objectives add lcgDefModulus dummy
scoreboard players set bityard lcgDefModulus 999999999

# https://en.wikipedia.org/wiki/Linear_congruential_generator#Parameters_in_common_use
scoreboard objectives remove lcgMultiplier
scoreboard objectives add lcgMultiplier dummy
scoreboard players set bityard lcgMultiplier 1664525
scoreboard objectives remove lcgIncrement
scoreboard objectives add lcgIncrement dummy
scoreboard players set bityard lcgIncrement 1013904223

# set the seed from an AEC UUID
scoreboard objectives remove lcgSeed
scoreboard objectives add lcgSeed dummy
execute unless score bityard lcgSeed = bityard lcgSeed run function bityard:lcg/seed