# remove bossbar
bossbar remove community:favor/xp_rain

# announce expiration
tellraw @a [{"text":"The "},{"color":"#00ff00","translate":"community.favor.xp_rain","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.xp_rain.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1