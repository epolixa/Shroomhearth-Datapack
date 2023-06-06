# remove bossbar
bossbar remove community:favor/horsepower

# announce expiration
tellraw @a [{"text":"The "},{"color":"#DA662C","translate":"community.favor.horsepower","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.horsepower.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1