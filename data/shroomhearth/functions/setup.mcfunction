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
scoreboard objectives add useWarpedFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick

# playerLeft - tracks when the player leaves the server
scoreboard objectives add playerLeft minecraft.custom:minecraft.leave_game

# setup UUID component scores
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add UUID4 dummy

# general purpose health objective
scoreboard objectives add health health "Health"