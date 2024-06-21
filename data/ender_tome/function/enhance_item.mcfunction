# Executes from a player who is trying to enhance an enhanceable item

# Init the storage
data modify storage ender_tome:ender_tome enhanceable_enchantments set value []
data modify storage ender_tome:ender_tome enhanceable_enchantments_length set value 0
data modify storage ender_tome:ender_tome random_enhanceable_enchantment_index set value 0
data modify storage ender_tome:ender_tome selected_enhanceable_enchantment set value ""

# Init the scores
scoreboard objectives add found_enhanceable_enchantment dummy
scoreboard objectives add enhanceable_enchantments_length dummy
scoreboard objectives add random_enhanceable_enchantment_index dummy

# Find enchantments that can be enhanced
function ender_tome:find_enhanceable_enchantments

# Find the length of enhanceable_enchantments
data modify storage ender_tome:ender_tome enhanceable_enchantments_counter set from storage ender_tome:ender_tome enhanceable_enchantments
scoreboard players set @s enhanceable_enchantments_length 0
function ender_tome:count_enhanceable_enchantments
execute store result storage ender_tome:ender_tome enhanceable_enchantments_length int 1 run scoreboard players get @s enhanceable_enchantments_length

# Pick a random index within enhanceable_enchantments based on length
function ender_tome:m_pick_random_enhanceable_enchantment_index with storage ender_tome:ender_tome

# Get the enchantment at that index
function ender_tome:m_select_random_enhanceable_enchantment with storage ender_tome:ender_tome

# Pass selected enchantment to the item modifier macro
function ender_tome:m_enhance_selected_enchantment with storage ender_tome:ender_tome

# Run functions if enchantment is enhanced
execute if score @s enhanceable_enchantments_length matches 1.. anchored eyes positioned ^ ^-0.15 ^1 as @n[tag=ender_tome] at @s run function ender_tome:consume_ender_tome
execute if score @s enhanceable_enchantments_length matches 1.. run advancement grant @s only ender_tome:forbidden_knowledge