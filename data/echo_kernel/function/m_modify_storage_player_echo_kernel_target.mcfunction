# Macro
# Executes from the context of a player who is using a chorus kernel
# With the context of the temp_uuid storage

# First flush the existing data
$data remove storage shroomhearth:players $(key_string).echo_kernel

# Add the entire echo_kernel item data from either the offhand or mainhand.
# If the player has the item in both hands, the mainhand will take precedence.
$execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{spore:"echo_kernel"}}}]}] run data modify storage shroomhearth:players $(key_string).echo_kernel.item set from entity @s Inventory[{Slot:-106b}]
$execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{spore:"echo_kernel"}}}}] run data modify storage shroomhearth:players $(key_string).echo_kernel.item set from entity @s SelectedItem

# Add the player's position and dimension
#data modify storage shroomhearth:players $(UUID).echo_kernel.targetPos set from storage shroomhearth:players $(UUID).echo_kernel.item.components.minecraft:custom_data.targetPos 
