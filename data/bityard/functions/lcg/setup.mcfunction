# linear congruential generator

# setup objectives
scoreboard players set lcg bityard 0

# set lcgModulus manually before calling bityard:lcg/random to use a custom range
scoreboard players set lcgDefModulus bityard 999999999

# https://en.wikipedia.org/wiki/Linear_congruential_generator#Parameters_in_common_use
scoreboard players set lcgMultiplier bityard 1664525
scoreboard players set lcgIncrement bityard 1013904223

# set the seed from an AEC UUID
execute unless score lcgSeed bityard = lcgSeed bityard run function bityard:lcg/seed