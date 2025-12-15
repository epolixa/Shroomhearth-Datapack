# update gamerule
gamerule locator_bar false

# remove bossbar
bossbar remove community:favor/locator_bar

# announce expiration
tellraw @a [{"text":"The "},{"color":"#d6be96","translate":"community.favor.locator_bar","hover_event":{"action":"show_text","value":{"translate":"community.favor.locator_bar.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1