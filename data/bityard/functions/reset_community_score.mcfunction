################################################################
# Reset Community Score
# re-creates community objectives for rotation of project
# also revokes "Community" goal advancement
################################################################

# community - objectives for calculating community score
scoreboard objectives remove communityTicks
scoreboard objectives add communityTicks dummy
scoreboard objectives remove community
scoreboard objectives add community dummy

#execute as @a[scores={minedStone=50000..}, advancements={bityard:almightya=false}] run advancement grant @s only bityard:almighty
