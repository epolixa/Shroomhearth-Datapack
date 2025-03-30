# update gamerule
gamerule doPatrolSpawning true
gamerule disableRaids false

# remove bossbar
bossbar remove community:favor/disable_raids

# announce expiration
tellraw @a [{"text":"The "},{"color":"#0b6138","translate":"community.favor.disable_raids","hover_event":{"action":"show_text","value":{"translate":"community.favor.disable_raids.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1