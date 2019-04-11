################################################################
# Reset Community Score
# re-creates community objectives for rotation of project
# also revokes "Community" goal advancement
################################################################

# community - main community value displayed in scoreboard
scoreboard objectives remove community
scoreboard objectives add community dummy

# communityTicks - added or removed every tick, increases community after a certain amount of ticks
scoreboard objectives remove communityTicks
scoreboard objectives add communityTicks dummy

# playerGroup - flag for number of other players in group / nearby
scoreboard objectives remove playerGroup
scoreboard objectives add playerGroup dummy

# Ensure that community score is shown in the tab list
scoreboard objectives setdisplay list community