# set lcg
scoreboard players set lcgModulus shroomhearth 5
function shroomhearth:lcg/random

# create a random blob of blocks
execute if score lcg shroomhearth matches 0 run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 minecraft:soul_sand replace minecraft:end_stone
execute if score lcg shroomhearth matches 0 run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 minecraft:soul_sand replace minecraft:end_stone

execute if score lcg shroomhearth matches 1 run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 minecraft:magma_block replace minecraft:end_stone
execute if score lcg shroomhearth matches 1 run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 minecraft:magma_block replace minecraft:end_stone

execute if score lcg shroomhearth matches 2 run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 minecraft:blue_ice replace minecraft:end_stone
execute if score lcg shroomhearth matches 2 run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 minecraft:blue_ice replace minecraft:end_stone

execute if score lcg shroomhearth matches 3 run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 minecraft:slime_block replace minecraft:end_stone
execute if score lcg shroomhearth matches 3 run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 minecraft:slime_block replace minecraft:end_stone

execute if score lcg shroomhearth matches 4 run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 minecraft:powder_snow replace minecraft:end_stone
execute if score lcg shroomhearth matches 4 run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 minecraft:powder_snow replace minecraft:end_stone

# unset lcg
scoreboard players set lcg shroomhearth -1

# summon transmute marker
summon minecraft:marker ~ ~ ~ {Tags:["transmute_marker"]}

# play particles on blob
particle minecraft:dragon_breath ~ ~ ~ 2 0.5 2 0.05 20 force

# play sound on blob
playsound minecraft:block.bell.resonate block @a ~ ~ ~ 2 2