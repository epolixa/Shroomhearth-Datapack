# generate a new random number

# take the seed
scoreboard players operation bityard lcg = bityard lcgSeed

# do operations to get raw number
scoreboard players operation bityard lcg *= bityard lcgMultiplier
scoreboard players operation bityard lcg += bityard lcgIncrement

# use int overflow to get next seed
scoreboard players operation bityard lcgSeed = bityard lcg

# if there isn't a modulus override, use the default one
execute unless score bityard lcgModulus = bityard lcgModulus run scoreboard players operation bityard lcg %= bityard lcgDefModulus

# if there is a modulus override, use it instead
execute if score bityard lcgModulus = bityard lcgModulus run scoreboard players operation bityard lcg %= bityard lcgModulus

# reset the override
scoreboard players reset bityard lcgModulus

# check bityard score for result, for instance: 
# execute if score bityard lcg matches 1..100 run ...