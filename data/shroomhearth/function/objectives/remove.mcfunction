## remove core objectives

# shroomhearth - shared objective for dummy global variables
scoreboard objectives remove shroomhearth

# debug global to control some executions useful for problem-solving
scoreboard players reset debug shroomhearth

# global count of online players
scoreboard players reset PLAYER_COUNT shroomhearth

# setup general useWarpedFungusStick flag
scoreboard objectives remove useWarpedFungusStick

# playerLeft - tracks when the player leaves the server
scoreboard objectives remove playerLeft

# player movement scores, used to trigger an advancement and update position trackers
scoreboard objectives remove playerAviate
scoreboard objectives remove playerBoat
scoreboard objectives remove playerClimb
scoreboard objectives remove playerCrouch
scoreboard objectives remove playerFall
scoreboard objectives remove playerFly
scoreboard objectives remove playerHorse
scoreboard objectives remove playerMinecart
scoreboard objectives remove playerPig
scoreboard objectives remove playerSprint
scoreboard objectives remove playerStrider
scoreboard objectives remove playerSwim
scoreboard objectives remove playerWalk
scoreboard objectives remove playerWalkOnWater
scoreboard objectives remove playerWalkUnderWater

# Death count, used to detect player death
scoreboard objectives remove death_count

# Time since last death, used to detect player respawn
scoreboard objectives remove time_since_death

# player horizontol rotation - used to track player rotation for some modules
scoreboard objectives remove playerHorizontalRotation

# setup UUID component scores
scoreboard objectives remove UUID1
scoreboard objectives remove UUID2
scoreboard objectives remove UUID3
scoreboard objectives remove UUID4

# general purpose health objective
scoreboard objectives remove health

# position scoring
scoreboard objectives remove pos_x
scoreboard objectives remove pos_y
scoreboard objectives remove pos_z

# flag for repairable items
scoreboard objectives remove repairable

# The level of Bad Omen an entity has. Used for custom ominous events, such as the Omen Ender Dragon.
scoreboard objectives remove omen_level

## remove module objectives
function allay_bottle:objectives/remove
function arena:objectives/remove
function community:objectives/remove
function harmony:objectives/remove
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
function relics:objectives/remove