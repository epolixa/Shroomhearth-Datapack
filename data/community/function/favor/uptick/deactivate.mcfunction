# update gamerule
gamerule random_tick_speed 3

# remove bossbar
bossbar remove community:favor/uptick

# announce expiration
tellraw @a [{"text":"The "},{"color":"#8b3fc5","translate":"community.favor.uptick","hover_event":{"action":"show_text","value":{"translate":"community.favor.uptick.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1