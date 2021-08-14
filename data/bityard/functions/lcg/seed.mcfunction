# get first int from marker UUID int array

# summon new marker
summon minecraft:marker ~ ~ ~ {Tags:["lcg_seed"]}

# store UUID as new seed
execute store result score lcgSeed bityard run data get entity @e[tag=lcg_seed,sort=nearest,limit=1] UUID[0]

# remove marker
kill @e[tag=lcg_seed]