# harmony - The main Harmony value displayed in scoreboard
scoreboard objectives remove harmony
scoreboard objectives add harmony dummy "Harmony"

# presence - added or removed every second, increases harmony after a certain threshold
scoreboard objectives remove presence
scoreboard objectives add presence dummy

# playerGroup - flag for number of other players in group / nearby
scoreboard objectives remove playerGroup
scoreboard objectives add playerGroup dummy

# hasMementoCatalyst - flag for if player has a memento catalyst in their inventory
scoreboard objectives remove hasMementoCatalyst
scoreboard objectives add hasMementoCatalyst dummy

# Ensure that Harmony is shown in the tab list
scoreboard objectives setdisplay list harmony


# Setup dummy players for ordinance status
scoreboard players set ordRegeneration shroomhearth 0
scoreboard players set ordKeepInventory shroomhearth 0