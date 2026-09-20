# Executor: Player who is trying to enhance an enhanceable item
# Position: The player
# Data: shroomhearth:ender_tome storage: {enhanceable_enchantments: array, enhanceable_enchantments_length: int}

$tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/m_pick_random_enhanceable_enchantment_index] Picking random enhanceable enchantment index out of $(enhanceable_enchantments_length) possible options."}]


# Pick a random enhanceable enchantment index within the valid range
$execute store result score @s random_enhanceable_enchantment_index run random value 0..$(enhanceable_enchantments_length)

# Decrement the 'random_enhanceable_enchantment_index' score by 1
scoreboard players remove @s random_enhanceable_enchantment_index 1

# If the 'random_enhanceable_enchantment_index' score is negative, set it to 0
execute if score @s random_enhanceable_enchantment_index matches ..-1 run scoreboard players set @s random_enhanceable_enchantment_index 0

# Store the final 'random_enhanceable_enchantment_index' score in the 'shroomhearth:ender_tome' storage as an integer
execute store result storage shroomhearth:ender_tome random_enhanceable_enchantment_index int 1 run scoreboard players get @s random_enhanceable_enchantment_index