# The main Harmony value displayed in scoreboard
scoreboard objectives add harmony dummy "Harmony"

# Ensure that Harmony is shown in the tab list
scoreboard objectives setdisplay list harmony

# Added or removed every second, increases harmony after a certain threshold
scoreboard objectives add presence dummy

# Number of other players in a group/nearby
scoreboard objectives add playerGroup dummy

# Flag for if player has a charm material in their inventory
scoreboard objectives add hasCharmMaterial dummy

# Flag for if player has a charm in their inventory
scoreboard objectives add hasCharm dummy

# Flag to allow players to see bossbars for favor timers/progress. off by default.
scoreboard objectives add showFavorProgress dummy

# Dummy player to track any active showFavorProgress
scoreboard players set favActive shroomhearth 0

# Tracks remaining regeneration effect, 
# workaround for issue where regen doesn't actually restore health if it's reset every second
scoreboard objectives add regenerationDuration dummy

# Flag for if player has Harmonized Chorus Fruit ingredient
scoreboard objectives add hasHcfMaterial dummy

# hcfUUID component scores, used for finding target player
scoreboard objectives add hcfUUID1 dummy
scoreboard objectives add hcfUUID2 dummy
scoreboard objectives add hcfUUID3 dummy
scoreboard objectives add hcfUUID4 dummy

# Flag for if the target player could be found
scoreboard objectives add targetPlayerFound dummy

# Entity rotation pitch
scoreboard objectives add rotPitch dummy

# Flag for if player has Living Island Permit ingredient
scoreboard objectives add hasPermitMaterial dummy

# Dummy player global timers for favor status
scoreboard players set favHaste shroomhearth 0
scoreboard players set favJumpBoost shroomhearth 0
scoreboard players set favRegeneration shroomhearth 0
scoreboard players set favResistance shroomhearth 0
scoreboard players set favSpeed shroomhearth 0
scoreboard players set favStrength shroomhearth 0
scoreboard players set favFireResistance shroomhearth 0
scoreboard players set favWaterBreathing shroomhearth 0
scoreboard players set favNightVision shroomhearth 0
scoreboard players set favKeepInventory shroomhearth 0
scoreboard players set favUptick shroomhearth 0
scoreboard players set favInsomnia shroomhearth 0
scoreboard players set favDisableRaids shroomhearth 0
scoreboard players set favEasy shroomhearth 0
scoreboard players set favXPRain shroomhearth 0
scoreboard players set favClearWeather shroomhearth 0
scoreboard players set favStopDaylight shroomhearth 0
scoreboard players set favHorsepower shroomhearth 0
scoreboard players set favDisableCramming shroomhearth 0
scoreboard players set favDisableSpawning shroomhearth 0
scoreboard players set favDisableFallDamage shroomhearth 0
scoreboard players set favDisablePvp shroomhearth 0
scoreboard players set favLocatorBar shroomhearth 0
scoreboard players set favDoubleXP shroomhearth 0
