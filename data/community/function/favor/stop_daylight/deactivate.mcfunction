# update gamerule
gamerule doDaylightCycle true

# remove bossbar
bossbar remove community:favor/stop_daylight

# announce expiration
tellraw @a [{"text":"The "},{"color":"#ffff00","translate":"community.favor.stop_daylight","hover_event":{"action":"show_text","value":{"translate":"community.favor.stop_daylight.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1