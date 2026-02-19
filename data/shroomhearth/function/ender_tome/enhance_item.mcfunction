# Executor: Player who is trying to enhance an enhanceable item
# Position: The player

tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/enhance_item] Attempting to enhance item for "},{"selector":"@s"}]


# Init the storage
data modify storage shroomhearth:ender_tome enhanceable_enchantments set value []
data modify storage shroomhearth:ender_tome enhanceable_enchantments_length set value 0
data modify storage shroomhearth:ender_tome random_enhanceable_enchantment_index set value 0
data modify storage shroomhearth:ender_tome selected_enhanceable_enchantment set value ""

# Init the scores
scoreboard objectives add found_enhanceable_enchantment dummy
scoreboard objectives add enhanceable_enchantments_length dummy
scoreboard objectives add random_enhanceable_enchantment_index dummy

# Find enchantments that can be enhanced
function shroomhearth:ender_tome/find_enhanceable_enchantments

# Find the length of enhanceable_enchantments
data modify storage shroomhearth:ender_tome enhanceable_enchantments_counter set from storage shroomhearth:ender_tome enhanceable_enchantments
scoreboard players set @s enhanceable_enchantments_length 0
function shroomhearth:ender_tome/count_enhanceable_enchantments
execute store result storage shroomhearth:ender_tome enhanceable_enchantments_length int 1 run scoreboard players get @s enhanceable_enchantments_length
tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/enhance_item] Found "},{"score":{"name":"@s","objective":"enhanceable_enchantments_length"}},{"text":" enhanceable enchantments"}]

# Pick a random index within enhanceable_enchantments based on length
function shroomhearth:ender_tome/m_pick_random_enhanceable_enchantment_index with storage shroomhearth:ender_tome

# Get the enchantment at that index
function shroomhearth:ender_tome/m_select_random_enhanceable_enchantment with storage shroomhearth:ender_tome

# Pass selected enchantment to the item modifier macro
function shroomhearth:ender_tome/m_enhance_selected_enchantment with storage shroomhearth:ender_tome
tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/enhance_item] Enhancing enchantment: "},{"storage":"shroomhearth:ender_tome","nbt":"selected_enhanceable_enchantment"}]

# Run functions if enchantment is enhanced
execute if score @s enhanceable_enchantments_length matches 1.. anchored eyes positioned ^ ^-0.15 ^1 as @n[tag=ender_tome] at @s run function shroomhearth:ender_tome/consume_ender_tome
execute if score @s enhanceable_enchantments_length matches 1.. run advancement grant @s only shroomhearth:ender_tome/forbidden_knowledge