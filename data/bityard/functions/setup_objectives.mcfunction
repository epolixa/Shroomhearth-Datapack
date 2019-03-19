################################################################
# Reset Objectives
# creates all necessary objectives used by modules, etc
################################################################


## Setup "Env"
# playerCount - flag for number of online players
scoreboard objectives remove playerCount
scoreboard objectives add playerCount dummy
scoreboard players set Env playerCount 0

# healthDisplay - timer for displayed health/level
scoreboard objectives remove healthDisplay
scoreboard objectives add healthDisplay dummy
scoreboard players set Env healthDisplay 0

# debug - flag to display debug messages to creative mode players
scoreboard objectives remove debug
scoreboard objectives add debug dummy
scoreboard players set Env debug 0


## Flags/Trackers/Timers

# entityHealth - tracking entity Health, displayed under nametag
scoreboard objectives remove entityHealth
scoreboard objectives add entityHealth dummy "\u00A74\u2764\u00A7r"

# playerLevel - displayed under player nametag
scoreboard objectives remove playerLevel
scoreboard objectives add playerLevel level "\u00A7a\u272A\u00A7r"

# playerJump - flag for jumping players
scoreboard objectives remove playerJump
scoreboard objectives add playerJump minecraft.custom:minecraft.jump

# playerSneak - used by solomonShoes
scoreboard objectives remove playerSneak
scoreboard objectives add playerSneak minecraft.custom:minecraft.sneak_time

# playerSleep - flag for sleeping players
scoreboard objectives remove playerSleep
scoreboard objectives add playerSleep dummy

# playerDamage - flag for a player inflicting damage
scoreboard objectives remove playerDamage
scoreboard objectives add playerDamage minecraft.custom:minecraft.damage_dealt


# playerGroup - flag for number of other players in group / nearby
scoreboard objectives remove playerGroup
scoreboard objectives add playerGroup dummy

# viewPitch - used for name colors
scoreboard objectives remove viewPitch
scoreboard objectives add viewPitch dummy

# motionY - value of vertical movement
scoreboard objectives remove motionY
scoreboard objectives add motionY dummy

# bleedSpeed
scoreboard objectives remove bleedSpeed
scoreboard objectives add bleedSpeed dummy

# rng - fake random number generator per player
scoreboard objectives remove rng
scoreboard objectives add rng minecraft.custom:minecraft.play_one_minute

# playerTicks - total played ticks
scoreboard objectives remove playerTicks
scoreboard objectives add playerTicks minecraft.custom:minecraft.play_one_minute

# community - objectives for calculating community score
scoreboard objectives remove communityTicks
scoreboard objectives add communityTicks dummy
scoreboard objectives remove community
scoreboard objectives add community dummy

# curse - flag for cursed player
scoreboard objectives remove curse
scoreboard objectives add curse dummy

# water polish - objectives for extra player water particles
scoreboard objectives remove soaked
scoreboard objectives add soaked dummy
scoreboard objectives remove bubbleBreath
scoreboard objectives add bubbleBreath dummy
scoreboard objectives remove bubbleSwim
scoreboard objectives add bubbleSwim minecraft.custom:minecraft.swim_one_cm 

# drop item sounds
scoreboard objectives remove dropItem
scoreboard objectives add dropItem minecraft.custom:minecraft.drop

# item entity glint
scoreboard objectives remove itemGlint
scoreboard objectives add itemGlint dummy
scoreboard objectives remove itemAge
scoreboard objectives add itemAge dummy

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

# Boss announcements
scoreboard objectives remove killWither
scoreboard objectives add killWither minecraft.killed:minecraft.wither
scoreboard objectives remove killDragon
scoreboard objectives add killDragon minecraft.killed:minecraft.ender_dragon


## Modules
function end_crystal_ward:setup


## Advancements

# minedStone - used by AlmightyA
scoreboard objectives remove minedStone
scoreboard objectives add minedStone minecraft.mined:minecraft.stone

# craftedCarrots - used by Depressus
scoreboard objectives remove craftedCarrots
scoreboard objectives add craftedCarrots minecraft.crafted:minecraft.golden_carrot


## Relic Items

# solomonsShoes - Solomon's Shoes
scoreboard objectives remove solomonsShoes
scoreboard objectives add solomonsShoes dummy

# kinStone - Kin Stone
scoreboard objectives remove kinStone
scoreboard objectives add kinStone dummy

# etherealBonbon - Ethereal Bonbon
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

# frogRompers - Frog Rompers
scoreboard objectives remove frogRompers
scoreboard objectives add frogRompers dummy
scoreboard objectives remove frogRompersSneak
scoreboard objectives add frogRompersSneak minecraft.custom:minecraft.sneak_time

# hungry - Hungry Pickaxe
scoreboard objectives remove hungryCoal
scoreboard objectives add hungryCoal minecraft.mined:minecraft.coal_ore
scoreboard objectives remove hungryIron
scoreboard objectives add hungryIron minecraft.mined:minecraft.iron_ore
scoreboard objectives remove hungryQuartz
scoreboard objectives add hungryQuartz minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives remove hungryGold
scoreboard objectives add hungryGold minecraft.mined:minecraft.gold_ore
scoreboard objectives remove hungryRedstone
scoreboard objectives add hungryRedstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives remove hungryLapis
scoreboard objectives add hungryLapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives remove hungryDiamond
scoreboard objectives add hungryDiamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives remove hungryEmerald
scoreboard objectives add hungryEmerald minecraft.mined:minecraft.emerald_ore


## Set Display
# Ensure that community score is shown in the tab list
scoreboard objectives setdisplay list community
