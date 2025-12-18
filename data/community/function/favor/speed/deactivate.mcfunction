# remove bossbar
bossbar remove community:favor/swiftness

# announce expiration
tellraw @a [{"text":"The "},{"color":"#33EBFF","translate":"community.favor.speed","hover_event":{"action":"show_text","value":{"translate":"community.favor.speed.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1