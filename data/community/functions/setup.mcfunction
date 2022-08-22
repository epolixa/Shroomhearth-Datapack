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

# playerLeft - tracks when the player leaves the server, useful to know when to inform active favors next login
scoreboard objectives remove playerLeft
scoreboard objectives add playerLeft minecraft.custom:minecraft.leave_game

# Setup dummy players for favor status
scoreboard players set favHaste shroomhearth 0
scoreboard players set favJumpBoost shroomhearth 0
scoreboard players set favRegeneration shroomhearth 0
scoreboard players set favResistance shroomhearth 0
scoreboard players set favSpeed shroomhearth 0
scoreboard players set favStrength shroomhearth 0
scoreboard players set favKeepInventory shroomhearth 0
scoreboard players set favUptick shroomhearth 0
scoreboard players set favInsomnia shroomhearth 0
scoreboard players set favDisableRaids shroomhearth 0