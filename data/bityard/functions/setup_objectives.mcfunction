################################################################
# Setup Objectives
# creates all necessary objectives used by modules, etc
################################################################


# Flags/Trackers

# playerSneak - used by solomonShoes
scoreboard objectives add playerSneak minecraft.custom:minecraft.sneak_time
# playerHealth - displayed under player nametag
scoreboard objectives add playerHealth health
# playerLevel - displayed under player nametag
scoreboard objectives add playerLevel level
# rng - psuedo random number generator per player
scoreboard objectives add rng minecraft.custom:minecraft.play_one_minute
# playerTicks - total played ticks
scoreboard objectives add playerTicks minecraft.custom:minecraft.play_one_minute
# community - objectives for calculating community score
scoreboard objectives add community dummy


# Advancements

# minedStone - used by AlmightyA
scoreboard objectives add minedStone minecraft.mined:minecraft.stone


# Relic Items

# solomonsShoes - Solomon's Shoes
scoreboard objectives add solomonsShoes dummy


# Set Display

# Ensure that community score is shown in the tab list
scoreboard objectives setdisplay list community
