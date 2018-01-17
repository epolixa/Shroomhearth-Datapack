################################################################
# Setup Objectives
# creates all necessary objectives used by modules, etc
################################################################


# Flags/Trackers

# playerSneak - used by solomonShoes
scoreboard objectives remove playerSneak
scoreboard objectives add playerSneak minecraft.custom:minecraft.sneak_time

# playerHealth - displayed under player nametag
scoreboard objectives remove playerHealth
scoreboard objectives add playerHealth health \u00A74\u2764

# playerLevel - displayed under player nametag
scoreboard objectives remove playerLevel
scoreboard objectives add playerLevel level \u00A7a\u272A

# rng - psuedo random number generator per player
scoreboard objectives remove rng
scoreboard objectives add rng minecraft.custom:minecraft.play_one_minute

# playerTicks - total played ticks
scoreboard objectives remove playerTicks
scoreboard objectives add playerTicks minecraft.custom:minecraft.play_one_minute

# healthDisplay - timer for displayed health/level
scoreboard objectives remove healthDisplay
scoreboard objectives add healthDisplay dummy
kill @e[tag=healthDisplay,type=armor_stand]
summon minecraft:armor_stand -543 10 262 {Tags: ["healthDisplay"], Marker: true, NoGravity: true, NoAI: true, Invisible: true, Invulnerable: true, Silent: true, Small: true}
scoreboard players set @e[tag=healthDisplay,type=armor_stand] healthDisplay 0

# community - objectives for calculating community score
scoreboard objectives remove community
scoreboard objectives add community dummy


# Advancements

# minedStone - used by AlmightyA
scoreboard objectives remove minedStone
scoreboard objectives add minedStone minecraft.mined:minecraft.stone


# Relic Items

# solomonsShoes - Solomon's Shoes
scoreboard objectives remove solomonsShoes
scoreboard objectives add solomonsShoes dummy


# Set Display

# Ensure that community score is shown in the tab list
scoreboard objectives setdisplay list community
