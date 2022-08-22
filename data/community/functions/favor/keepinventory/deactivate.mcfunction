# update gamerule
gamerule keepInventory false

# remove bossbar
bossbar remove community:favor/keepinventory

# announce expiration
tellraw @a [{"text":"The "},{"color":"#c6c6c6","translate":"community.favor.keepinventory","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.keepinventory.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1