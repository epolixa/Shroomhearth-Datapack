# update difficulty
difficulty hard

# remove bossbar
bossbar remove community:favor/easy

# announce expiration
tellraw @a [{"text":"The "},{"color":"#dbf19f","translate":"community.favor.easy","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.easy.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1