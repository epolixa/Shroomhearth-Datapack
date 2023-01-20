# update gamerule
gamerule doWeatherCycle false

# remove bossbar
bossbar remove community:favor/clear_weather

# announce expiration
tellraw @a [{"text":"The "},{"color":"#7BA4FF","translate":"community.favor.clear_weather","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.clear_weather"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1