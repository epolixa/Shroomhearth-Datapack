# remove bossbar
bossbar remove community:favor/speed

# announce expiration
tellraw @a [{"text":"The "},{"color":"#7CAFC6","translate":"community.favor.speed","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.speed.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1