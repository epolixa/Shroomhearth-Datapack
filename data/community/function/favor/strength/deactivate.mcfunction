# remove bossbar
bossbar remove community:favor/strength

# announce expiration
tellraw @a [{"text":"The "},{"color":"#FFC700","translate":"community.favor.strength","hover_event":{"action":"show_text","value":{"translate":"community.favor.strength.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1