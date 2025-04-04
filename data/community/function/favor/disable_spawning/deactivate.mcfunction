# update gamerule
gamerule doMobSpawning true

# remove bossbar
bossbar remove community:favor/disable_spawning

# announce expiration
tellraw @a [{"text":"The "},{"color":"#406278","translate":"community.favor.disable_spawning","hover_event":{"action":"show_text","value":{"translate":"community.favor.disable_spawning.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1