################################################################
# Reset Objectives
# creates all necessary objectives used by modules, etc
################################################################


## Flags/Trackers/Timers

# playerSneak - used by solomonShoes
scoreboard objectives remove playerSneak
scoreboard objectives add playerSneak minecraft.custom:minecraft.sneak_time

# playerHealth - displayed under player nametag
scoreboard objectives remove playerHealth
scoreboard objectives add playerHealth health \u00A74\u2764

# playerSleep - flag for sleeping players
scoreboard objectives remove playerSleep
scoreboard objectives add playerSleep dummy

# playerJump - flag for jumping players
scoreboard objectives remove playerJump
scoreboard objectives add playerJump minecraft.custom:minecraft.jump

# viewPitch - used for name colors
scoreboard objectives remove viewPitch
scoreboard objectives add viewPitch dummy

# motionY - value of vertical movement
scoreboard objectives remove motionY
scoreboard objectives add motionY dummy

# bleedSpeed
scoreboard objectives remove bleedSpeed
scoreboard objectives add bleedSpeed dummy

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

# water polish - objectives for extra player water particles
scoreboard objectives remove soaked
scoreboard objectives add soaked dummy
scoreboard objectives remove bubbleBreath
scoreboard objectives add bubbleBreath dummy
scoreboard objectives remove bubbleSwim
scoreboard objectives add bubbleSwim minecraft.custom:minecraft.dive_one_cm 

# drop item sounds
scoreboard objectives remove dropItem
scoreboard objectives add dropItem minecraft.custom:minecraft.drop

# item glint
scoreboard objectives remove itemGlint
scoreboard objectives add itemGlint dummy

# entity ticks - increments every tick for mobs, used for spawn control
scoreboard objectives remove entityTicks 
scoreboard objectives add entityTicks dummy

# heldDye - for name coloring
scoreboard objectives remove heldDye
scoreboard objectives add heldDye dummy

# farming xp
scoreboard objectives remove farmWheat
scoreboard objectives add farmWheat minecraft.mined:minecraft.wheat
scoreboard objectives remove farmBeets
scoreboard objectives add farmBeets minecraft.mined:minecraft.beetroots
scoreboard objectives remove farmCarrots
scoreboard objectives add farmCarrots minecraft.mined:minecraft.carrots
scoreboard objectives remove farmPotatoes
scoreboard objectives add farmPotatoes minecraft.mined:minecraft.potatoes
scoreboard objectives remove farmWarts
scoreboard objectives add farmWarts minecraft.mined:minecraft.nether_wart

## Advancements

# minedStone - used by AlmightyA
scoreboard objectives remove minedStone
scoreboard objectives add minedStone minecraft.mined:minecraft.stone


## Relic Items

# solomonsShoes - Solomon's Shoes
scoreboard objectives remove solomonsShoes
scoreboard objectives add solomonsShoes dummy

# kinStone - Lovers' Stone
scoreboard objectives remove kinStone
scoreboard objectives add kinStone dummy

# etherealBonbon - Ephemeral Bonbon
scoreboard objectives remove etherealBonbon
scoreboard objectives add etherealBonbon minecraft.used:minecraft.chorus_fruit

# everCookie - Everlasting Cookie
scoreboard objectives remove everCookie
scoreboard objectives add everCookie dummy
scoreboard objectives remove ateCookie
scoreboard objectives add ateCookie minecraft.used:minecraft.cookie

# reusablePearl - Reusable Ender Pearl
scoreboard objectives remove reusablePearl
scoreboard objectives add reusablePearl dummy
scoreboard objectives remove usedPearl
scoreboard objectives add usedPearl minecraft.used:minecraft.ender_pearl

# frog rompers
scoreboard objectives remove frogRompers
scoreboard objectives add frogRompers dummy
scoreboard objectives remove frogRompersSneak
scoreboard objectives add frogRompersSneak minecraft.custom:minecraft.sneak_time

## Set Display

# Ensure that community score is shown in the tab list
scoreboard objectives setdisplay list community
