# Generates a random index within a specified range and stores it in the 'random_enhanceable_enchantment_index' score of the executing entity.
# Decrements the 'random_enhanceable_enchantment_index' score by 1.
# If the 'random_enhanceable_enchantment_index' score is negative, sets it to 0.
# Retrieves the value of the 'random_enhanceable_enchantment_index' score and stores it in the 'shroomhearth:ender_tome' storage as an integer.

$execute store result score @s random_enhanceable_enchantment_index run random value 0..$(enhanceable_enchantments_length)
scoreboard players remove @s random_enhanceable_enchantment_index 1
execute if score @s random_enhanceable_enchantment_index matches ..-1 run scoreboard players set @s random_enhanceable_enchantment_index 0
execute store result storage shroomhearth:ender_tome random_enhanceable_enchantment_index int 1 run scoreboard players get @s random_enhanceable_enchantment_index