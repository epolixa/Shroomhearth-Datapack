say Counting enhanceable enchantments

# Increment count unless the list is empty
execute if data storage ender_tome:ender_tome enhanceable_enchantments_counter[0] run scoreboard players add @s enhanceable_enchantments_length 1

# Remove the first element from the list
data remove storage ender_tome:ender_tome enhanceable_enchantments_counter[0]

# Count recursively
execute if data storage ender_tome:ender_tome enhanceable_enchantments_counter[0] run function ender_tome:count_enhanceable_enchantments