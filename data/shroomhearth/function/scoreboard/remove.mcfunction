# Objective for core fake player globals
scoreboard objectives remove shroomhearth

# Global random value holder
scoreboard players reset random shroomhearth

# Global count of online players
scoreboard players reset player_count shroomhearth

# setup general used_warped_fungus_stick flag
scoreboard objectives remove used_warped_fungus_on_a_stick
scoreboard objectives remove used_goat_horn

# leave_game - tracks when the player leaves the server
scoreboard objectives remove leave_game

# player movement scores, used to trigger an advancement and update position trackers
scoreboard objectives remove aviate_one_cm
scoreboard objectives remove boat_one_cm
scoreboard objectives remove climb_one_cm
scoreboard objectives remove crouch_one_cm
scoreboard objectives remove fall_one_cm
scoreboard objectives remove fly_one_cm
scoreboard objectives remove horse_one_cm
scoreboard objectives remove minecart_one_cm
scoreboard objectives remove pig_one_cm
scoreboard objectives remove sprint_one_cm
scoreboard objectives remove strider_one_cm
scoreboard objectives remove swim_one_cm
scoreboard objectives remove walk_one_cm
scoreboard objectives remove walk_on_water_one_cm
scoreboard objectives remove walk_under_water_one_cm

# Death count, used to detect player death
scoreboard objectives remove death_count

# Time since last death, used to detect player respawn
scoreboard objectives remove time_since_death

# player horizontol rotation - used to track player rotation for some modules
scoreboard objectives remove rotation_yaw

# setup UUID component scores
scoreboard objectives remove uuid_1
scoreboard objectives remove uuid_2
scoreboard objectives remove uuid_3
scoreboard objectives remove uuid_4

# general purpose health objective
scoreboard objectives remove health
scoreboard objectives remove player_health

# position scoring
scoreboard objectives remove pos_x
scoreboard objectives remove pos_y
scoreboard objectives remove pos_z

# chunkX, chunkZ - contains chunk coordinates
scoreboard objectives remove chunk_x
scoreboard objectives remove chunk_z

# flag for repairable items
scoreboard objectives remove repairable

# The level of Bad Omen an entity has. Used for custom ominous events, such as the Omen Ender Dragon.
scoreboard objectives remove omen_level

# Track if the player dropped an item
scoreboard objectives remove drop


# Teams for name colors
team remove aqua
team remove black
team remove blue
team remove dark_aqua
team remove dark_blue
team remove dark_gray
team remove dark_green
team remove dark_purple
team remove dark_red
team remove gold
team remove gray
team remove green
team remove light_purple
team remove red
team remove white
team remove yellow