# Objective for core fake player globals
scoreboard objectives add shroomhearth dummy

# Global random value holder
scoreboard players set random shroomhearth 0

# Global count of online players
scoreboard players set player_count shroomhearth 0


# setup general used_warped_fungus_stick flag
scoreboard objectives add used_warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add used_goat_horn minecraft.used:minecraft.goat_horn

# leave_game - tracks when the player leaves the server
scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game

# player movement scores, used to trigger an advancement and update position trackers
scoreboard objectives add aviate_one_cm minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add boat_one_cm minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add climb_one_cm minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add crouch_one_cm minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add fall_one_cm minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add fly_one_cm minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add horse_one_cm minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add minecart_one_cm minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add pig_one_cm minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add sprint_one_cm minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add strider_one_cm minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add swim_one_cm minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add walk_one_cm minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add walk_on_water_one_cm minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add walk_under_water_one_cm minecraft.custom:minecraft.walk_under_water_one_cm

# Death count, used to detect player death
scoreboard objectives add death_count deathCount

# Time since last death, used to detect player respawn
scoreboard objectives add time_since_death minecraft.custom:minecraft.time_since_death

# player horizontol rotation - used to track player rotation for some modules
scoreboard objectives add rotation_yaw dummy

# setup UUID component scores
scoreboard objectives add uuid_1 dummy
scoreboard objectives add uuid_2 dummy
scoreboard objectives add uuid_3 dummy
scoreboard objectives add uuid_4 dummy

# general purpose health objectives
scoreboard objectives add health dummy
scoreboard objectives add player_health health

# position scoring
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy

# chunkX, chunkZ - contains chunk coordinates
scoreboard objectives add chunk_x dummy
scoreboard objectives add chunk_z dummy

# flag for repairable items
scoreboard objectives add repairable dummy

# The level of Bad Omen an entity has. Used for custom ominous events, such as the Omen Ender Dragon.
scoreboard objectives add omen_level dummy

# Track if the player dropped an item
scoreboard objectives add drop minecraft.custom:minecraft.drop

## other setup
# game rules
function shroomhearth:set_game_rules
# xp utilities
function shroomhearth:xp/setup