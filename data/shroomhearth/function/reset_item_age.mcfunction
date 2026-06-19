# Executor: An item entity
# Position: The item entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:reset_item_age] Resetting age of "},{"selector":"@s"},{"text":" to 0"}]


# Reset item Age property
data modify entity @s Age set value 0s

# Play particle on the item
particle minecraft:wax_off ~ ~0.375 ~ 0.125 0.125 0.125 1 1 force @a

# grant advancement to players near enough to witness the item being preserved
advancement grant @a[distance=..16] only shroomhearth:right_where_you_left_it