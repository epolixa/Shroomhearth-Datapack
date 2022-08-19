# remove bossbar
bossbar remove community:favor/jump_boost

# announce expiration
tellraw @a [{"text":"The "},{"color":"#22FF4C","translate":"community.favor.jump_boost"},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1