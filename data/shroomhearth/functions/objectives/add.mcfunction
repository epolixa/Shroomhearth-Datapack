## add core objectives
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

## add module objectives
function arena:objectives/add
function community:objectives/add
function ender_dragon:objectives/add
function haberdasher:objectives/add
function hollow_vale:objectives/add
function item_interactions:objectives/add
function pillager_raid:objectives/add
function player_advancements:objectives/add
function porcelain:objectives/add
function recall:objectives/add
function sleeping:objectives/add
function stat_display:objectives/add
function wither:objectives/add