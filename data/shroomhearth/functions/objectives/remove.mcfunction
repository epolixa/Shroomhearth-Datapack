## remove core objectives
# setup playerCount variable
scoreboard players reset playerCount shroomhearth

# setup general useWarpedFungusStick flag
scoreboard objectives remove useWarpedFungusStick

# playerLeft - tracks when the player leaves the server
scoreboard objectives remove playerLeft

# setup UUID component scores
scoreboard objectives remove UUID1
scoreboard objectives remove UUID2
scoreboard objectives remove UUID3
scoreboard objectives remove UUID4

# general purpose health objective
scoreboard objectives remove health

## remove module objectives
function arena:objectives/remove
function community:objectives/remove
function ender_dragon:objectives/remove
function haberdasher:objectives/remove
function hollow_vale:objectives/remove
function item_interactions:objectives/remove
function pillager_raid:objectives/remove
function player_advancements:objectives/remove
function porcelain:objectives/remove
function recall:objectives/remove
function sleeping:objectives/remove
function stat_display:objectives/remove
function wither:objectives/remove