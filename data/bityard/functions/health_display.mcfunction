################################################################
# Health/Level Display
# shows health and level under a player's name on an interval
################################################################


# Increment timer on armorstand dummy
scoreboard players add @e[tag=healthDisplay,type=armor_stand] healthDisplay 1

# Toggle between health/level
execute as @e[tag=healthDisplay,type=armor_stand,scores={healthDisplay=1}] run scoreboard objectives setdisplay belowName playerHealth
execute as @e[tag=healthDisplay,type=armor_stand,scores={healthDisplay=600}] run scoreboard objectives setdisplay belowName playerLevel

# Reset timer
scoreboard players set @e[tag=healthDisplay,type=armor_stand,scores={healthDisplay=1200..}] healthDisplay 0