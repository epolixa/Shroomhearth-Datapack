################################################################
# Reset Objectives
# creates all necessary objectives used by modules, etc
################################################################


## Flags/Trackers/Timers

# playerJump - flag for jumping players
scoreboard objectives remove playerJump
scoreboard objectives add playerJump minecraft.custom:minecraft.jump

# playerSneak - used by solomonShoes
scoreboard objectives remove playerSneak
scoreboard objectives add playerSneak minecraft.custom:minecraft.sneak_time

# rng - fake random number generator per player, ten-tick timer
scoreboard objectives remove rng
scoreboard objectives add rng minecraft.custom:minecraft.play_one_minute

# playerTicks - total played ticks
scoreboard objectives remove playerTicks
scoreboard objectives add playerTicks minecraft.custom:minecraft.play_one_minute

# item entity glint
scoreboard objectives remove itemGlint
scoreboard objectives add itemGlint dummy
scoreboard objectives remove itemAge
scoreboard objectives add itemAge dummy


## Relic Items

# kinStone - Kin Stone
scoreboard objectives remove kinStone
scoreboard objectives add kinStone dummy

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

# motionY - value of vertical movement, used for frog rompers
scoreboard objectives remove motionY
scoreboard objectives add motionY dummy