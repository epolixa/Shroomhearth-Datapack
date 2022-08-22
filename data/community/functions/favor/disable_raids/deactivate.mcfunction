# update gamerule
gamerule doPatrolSpawning true
gamerule disableRaids false

# remove bossbar
bossbar remove community:favor/disable_raids

# announce expiration
tellraw @a [{"text":"The "},{"color":"#5a2f38","translate":"community.favor.disable_raids"},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1