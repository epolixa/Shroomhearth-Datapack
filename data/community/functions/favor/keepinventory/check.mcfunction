# This function checks for a player's memento before activating an event

# Check that player has memento
execute store result score @s hasMemento run clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.memento"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 0

# If they don't have memento, send a message
execute unless predicate community:has_memento run tellraw @s {"translate":"community.missing_memento","hoverEvent":{"action":"show_text","contents":{"translate":"community.missing_memento_tooltip"}}}

# If the player has memento, activate
execute if predicate community:has_memento run function community:favor/keepinventory/activate