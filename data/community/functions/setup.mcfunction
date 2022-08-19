# harmony - The main Harmony value displayed in scoreboard
scoreboard objectives remove harmony
scoreboard objectives add harmony dummy "Harmony"

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

# Ensure that Harmony is shown in the tab list
scoreboard objectives setdisplay list harmony

# showFavorProgress - flag to allow players to see bossbars for favor timers/progress. off by default.
scoreboard objectives remove showFavorProgress
scoreboard objectives add showFavorProgress dummy

# Dummy player to track any active showFavorProgress
scoreboard players set favActive shroomhearth 0

# Setup dummy players for favor status
scoreboard players set favRegeneration shroomhearth 0
scoreboard players set favKeepInventory shroomhearth 0