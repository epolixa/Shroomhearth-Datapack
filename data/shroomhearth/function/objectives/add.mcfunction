## add core objectives

# shroomhearth - shared objective for dummy global variables
scoreboard objectives add shroomhearth dummy

# debug global to control some executions useful for problem-solving
scoreboard players set debug shroomhearth 0

# setup playerCount variable
scoreboard players set playerCount shroomhearth 0

# setup general useWarpedFungusStick flag
scoreboard objectives add useWarpedFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick

# playerLeft - tracks when the player leaves the server
scoreboard objectives add playerLeft minecraft.custom:minecraft.leave_game

# player movement scores, used to trigger an advancement and update position trackers
scoreboard objectives add playerAviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add playerBoat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add playerClimb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add playerCrouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add playerFall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add playerFly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add playerHorse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add playerMinecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add playerPig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add playerSprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add playerStrider minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add playerSwim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add playerWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add playerWalkOnWater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add playerWalkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm

# setup UUID component scores
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add UUID4 dummy

# general purpose health objective
scoreboard objectives add health health "Health"

# position scoring
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy

# flag for repairable items
scoreboard objectives add repairable dummy

# The level of Bad Omen an entity has. Used for custom ominous events, such as the Omen Ender Dragon.
scoreboard objectives add omen_level dummy

## other setup
# gamerules
function shroomhearth:setup_gamerules
# lcg - pseudo random number generator
function shroomhearth:lcg/setup
# chunk coordinate objectives
function shroomhearth:chunk_coords/setup
# xp utilities
function shroomhearth:xp/setup

## add module objectives
function allay_bottle:objectives/add
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