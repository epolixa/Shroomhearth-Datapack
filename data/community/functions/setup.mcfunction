# harmony - The main Harmony value displayed in scoreboard
scoreboard objectives remove harmony
scoreboard objectives add harmony dummy "Harmony"

# Ensure that Harmony is shown in the tab list
scoreboard objectives setdisplay list harmony

# presence - added or removed every second, increases harmony after a certain threshold
scoreboard objectives remove presence
scoreboard objectives add presence dummy

# playerGroup - flag for number of other players in group / nearby
scoreboard objectives remove playerGroup
scoreboard objectives add playerGroup dummy

# hasCharmCatalyst - flag for if player has a charm catalyst in their inventory
scoreboard objectives remove hasCharmCatalyst
scoreboard objectives add hasCharmCatalyst dummy

# hasCharm - flag for if player has a charm in their inventory
scoreboard objectives remove hasCharm
scoreboard objectives add hasCharm dummy

# showFavorProgress - flag to allow players to see bossbars for favor timers/progress. off by default.
scoreboard objectives remove showFavorProgress
scoreboard objectives add showFavorProgress dummy

# favActive - dummy player to track any active showFavorProgress
scoreboard players set favActive shroomhearth 0

# regenerationDuration - tracks remaining regeneration effect, workaround for issue where regen doesn't actually restore health if it's reset every second
scoreboard objectives remove regenerationDuration
scoreboard objectives add regenerationDuration dummy

# hasHcfIngredient - flag for if player has harmonized chorus fruit ingredient
scoreboard objectives remove hasHcfIngredient
scoreboard objectives add hasHcfIngredient dummy

# setup hcfUUID component scores
scoreboard objectives add hcfUUID1 dummy
scoreboard objectives add hcfUUID2 dummy
scoreboard objectives add hcfUUID3 dummy
scoreboard objectives add hcfUUID4 dummy

# if the target player could be found
scoreboard objectives add targetPlayerFound dummy

# Setup dummy players for favor status
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