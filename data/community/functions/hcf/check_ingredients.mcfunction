# This function checks for a player's charm and hcf material before creating

# Check that player has charm and ingredient
execute store result score @s hasCharm run clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 0
execute store result score @s hasHcfIngredient run clear @s #community:harmonized_chorus_fruit_ingredient 0

# If they don't have charm, send a message
execute unless predicate community:can_create_hcf run tellraw @s {"translate":"community.cannot_create_hcf","hoverEvent":{"action":"show_text","contents":{"translate":"community.cannot_create_hcf_tooltip"}}}

# If the player has the charm and material, create hcf
execute if predicate community:can_create_hcf run function community:hcf/create_harmonized_chorus_fruit