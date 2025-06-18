# The main Harmony value displayed in scoreboard
scoreboard objectives remove harmony

# Added or removed every second, increases harmony after a certain threshold
scoreboard objectives remove presence

# Number of other players in a group/nearby
scoreboard objectives remove playerGroup

# Flag for if player has a charm catalyst in their inventory
scoreboard objectives remove hasCharmCatalyst

# Flag for if player has a charm in their inventory
scoreboard objectives remove hasCharm

# Flag to allow players to see bossbars for favor timers/progress. off by default.
scoreboard objectives remove showFavorProgress

# Dummy player to track amount of active favors
scoreboard players reset favActive shroomhearth

# Tracks remaining regeneration effect, 
# workaround for issue where regen doesn't actually restore health if it's reset every second
scoreboard objectives remove regenerationDuration

# Flag for if player has Harmonized Chorus Fruit ingredient
scoreboard objectives remove hasHcfMaterial

# hcfUUID component scores, used for finding target player
scoreboard objectives remove hcfUUID1
scoreboard objectives remove hcfUUID2
scoreboard objectives remove hcfUUID3
scoreboard objectives remove hcfUUID4

# Flag for if the target player could be found
scoreboard objectives remove targetPlayerFound

# Entity rotation pitch
scoreboard objectives remove rotPitch

# Flag for if player has Living Island Permit ingredient
scoreboard objectives remove hasPermitMaterial

# Dummy player global timers for favor status
scoreboard players reset favHaste shroomhearth
scoreboard players reset favJumpBoost shroomhearth
scoreboard players reset favRegeneration shroomhearth
scoreboard players reset favResistance shroomhearth
scoreboard players reset favSpeed shroomhearth
scoreboard players reset favStrength shroomhearth
scoreboard players reset favFireResistance shroomhearth
scoreboard players reset favWaterBreathing shroomhearth
scoreboard players reset favNightVision shroomhearth
scoreboard players reset favKeepInventory shroomhearth
scoreboard players reset favUptick shroomhearth
scoreboard players reset favInsomnia shroomhearth
scoreboard players reset favDisableRaids shroomhearth
scoreboard players reset favEasy shroomhearth
scoreboard players reset favXPRain shroomhearth
scoreboard players reset favClearWeather shroomhearth
scoreboard players reset favStopDaylight shroomhearth
scoreboard players reset favHorsepower shroomhearth
scoreboard players reset favDisableCramming shroomhearth
scoreboard players reset favDisableSpawning shroomhearth
scoreboard players reset favDisableFallDamage shroomhearth
scoreboard players reset favLocatorBar shroomhearth