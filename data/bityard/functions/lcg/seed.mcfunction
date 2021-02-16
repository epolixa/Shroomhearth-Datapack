# get first int from AEC UUID int array

# summon new AEC
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["lcg_seed"]}

# store int
execute store result score bityard lcgSeed run data get entity @e[type=minecraft:area_effect_cloud,tag=lcg_seed,distance=0,limit=1] UUID[0]

# remove AEC
kill @e[type=area_effect_cloud,tag=lcg_seed,distance=0,limit=1]