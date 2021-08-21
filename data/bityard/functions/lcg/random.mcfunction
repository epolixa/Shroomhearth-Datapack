# generate a new random number

# take the seed
scoreboard players operation lcg bityard = lcgSeed bityard

# do operations to get raw number
scoreboard players operation lcg bityard *= lcgMultiplier bityard
scoreboard players operation lcg bityard += lcgIncrement bityard

# use int overflow to get next seed
scoreboard players operation lcgSeed bityard = lcg bityard

# if there isn't a modulus override, use the default one
execute unless score lcgModulus bityard = lcgModulus bityard run scoreboard players operation lcg bityard %= lcgDefModulus bityard

# if there is a modulus override, use it instead
execute if score lcgModulus bityard = lcgModulus bityard run scoreboard players operation lcg bityard %= lcgModulus bityard

# reset the override
scoreboard players reset lcgModulus bityard

# check bityard score for result, for instance: 
# execute if score lcg bityard matches 1..100 run ...