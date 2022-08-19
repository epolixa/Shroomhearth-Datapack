# remove bossbar
bossbar remove community:favor/haste

# announce expiration
tellraw @a [{"text":"The "},{"color":"#D9C043","translate":"community.favor.haste"},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1