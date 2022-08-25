# update gamerule
gamerule keepInventory false

# remove bossbar
bossbar remove community:favor/keep_inventory

# announce expiration
tellraw @a [{"text":"The "},{"color":"#c6c6c6","translate":"community.favor.keep_inventory","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.keep_inventory.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1