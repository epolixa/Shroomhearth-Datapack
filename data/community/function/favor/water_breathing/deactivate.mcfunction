# remove bossbar
bossbar remove community:favor/water_breathing

# announce expiration
tellraw @a [{"text":"The "},{"color":"#98DAC0","translate":"community.favor.water_breathing","hover_event":{"action":"show_text","value":{"translate":"community.favor.water_breathing.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1