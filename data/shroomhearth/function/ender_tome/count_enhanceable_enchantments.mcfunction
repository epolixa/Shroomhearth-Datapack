# Executor: A Player that is enhancing an item's enchantments
# Position: The player

tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/count_enhanceable_enchantments] Counting enhanceable enchantments for "},{"selector":"@s"}]


# Increment count unless the list is empty
execute if data storage shroomhearth:ender_tome enhanceable_enchantments_counter[0] run scoreboard players add @s enhanceable_enchantments_length 1

# Remove the first element from the list
data remove storage shroomhearth:ender_tome enhanceable_enchantments_counter[0]

# Count recursively
execute if data storage shroomhearth:ender_tome enhanceable_enchantments_counter[0] run function shroomhearth:ender_tome/count_enhanceable_enchantments