# remove bossbar
bossbar remove community:favor/strength

# announce expiration
tellraw @a [{"text":"The "},{"color":"#932423","translate":"community.favor.strength"},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1