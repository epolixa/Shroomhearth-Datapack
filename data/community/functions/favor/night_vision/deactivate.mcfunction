# remove bossbar
bossbar remove community:favor/night_vision

# announce expiration
tellraw @a [{"text":"The "},{"color":"#C2FF66","translate":"community.favor.night_vision","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.night_vision.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1