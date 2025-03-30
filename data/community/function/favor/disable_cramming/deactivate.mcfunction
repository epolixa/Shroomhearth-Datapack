# update gamerule
gamerule maxEntityCramming 24

# remove bossbar
bossbar remove community:favor/disable_cramming

# announce expiration
tellraw @a [{"text":"The "},{"color":"#6e0453","translate":"community.favor.disable_cramming","hover_event":{"action":"show_text","value":{"translate":"community.favor.disable_cramming.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1