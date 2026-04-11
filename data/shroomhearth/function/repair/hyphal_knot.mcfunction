# check if they have repairable item
execute store result score @s repairable run clear @s minecraft:glistering_melon_slice[custom_data={"shroomhearth_id":"hyphal_knot"}] 0

# replace with new item
clear @s[scores={repairable=1..}] minecraft:glistering_melon_slice[custom_data={"shroomhearth_id":"hyphal_knot"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:world_border/hyphal_knot

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable