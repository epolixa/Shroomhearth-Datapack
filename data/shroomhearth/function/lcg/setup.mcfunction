# linear congruential generator

# setup objectives
scoreboard players set lcg shroomhearth 0

# set lcgModulus manually before calling shroomhearth:lcg/random to use a custom range
scoreboard players set lcgDefModulus shroomhearth 999999999

# https://en.wikipedia.org/wiki/Linear_congruential_generator#Parameters_in_common_use
scoreboard players set lcgMultiplier shroomhearth 1664525
scoreboard players set lcgIncrement shroomhearth 1013904223

# set the seed from an AEC UUID
execute unless score lcgSeed shroomhearth = lcgSeed shroomhearth run function shroomhearth:lcg/seed