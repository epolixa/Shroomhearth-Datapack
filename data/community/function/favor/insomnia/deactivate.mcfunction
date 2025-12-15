# update gamerule
gamerule spawn_phantoms true

# remove bossbar
bossbar remove community:favor/insomnia

# announce expiration
tellraw @a [{"text":"The "},{"color":"#43538d","translate":"community.favor.insomnia","hover_event":{"action":"show_text","value":{"translate":"community.favor.insomnia.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1