# gamerules
function shroomhearth:setup_gamerules

# shroomhearth - shared objective for dummy global variables
scoreboard objectives add shroomhearth dummy

# lcg - pseudo random number generator
function shroomhearth:lcg/setup

# chunk coordinate objectives
function shroomhearth:chunk_coords/setup

# setup playerCount variable
scoreboard players set playerCount shroomhearth 0

# setup general useWarpedFungusStick flag
scoreboard objectives remove useWarpedFungusStick
scoreboard objectives add useWarpedFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick