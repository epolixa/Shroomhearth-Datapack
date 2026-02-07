# Executor: An item entity
# Position: The item entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:reset_item_age] Resetting age of "},{"selector":"@s"},{"text":" to 0"}]


# Reset item Age property
data modify entity @s Age set value 0s

# Play particle on the item
execute at @s run particle minecraft:wax_off ~ ~0.375 ~ 0.125 0.125 0.125 0 1 force @a