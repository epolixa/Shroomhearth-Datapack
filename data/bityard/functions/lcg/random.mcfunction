# generate a new random number

# take the seed
scoreboard players operation lcg shroomhearth = lcgSeed shroomhearth

# do operations to get raw number
scoreboard players operation lcg shroomhearth *= lcgMultiplier shroomhearth
scoreboard players operation lcg shroomhearth += lcgIncrement shroomhearth

# use int overflow to get next seed
scoreboard players operation lcgSeed shroomhearth = lcg shroomhearth

# if there isn't a modulus override, use the default one
execute unless score lcgModulus shroomhearth = lcgModulus shroomhearth run scoreboard players operation lcg shroomhearth %= lcgDefModulus shroomhearth

# if there is a modulus override, use it instead
execute if score lcgModulus shroomhearth = lcgModulus shroomhearth run scoreboard players operation lcg shroomhearth %= lcgModulus shroomhearth

# reset the override
scoreboard players reset lcgModulus shroomhearth

# check shroomhearth score for result, for instance: 
# execute if score lcg shroomhearth matches 1..100 run ...