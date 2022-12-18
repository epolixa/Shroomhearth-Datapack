# This function checks for a player's charm before activating an event

# Check that player has charm
execute store result score @s hasCharm run clear @s minecraft:ghast_tear{display:{Name:'{"italic":false,"translate":"item.minecraft.charm"}'},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}],HideFlags:1} 0

# If they don't have charm, send a message
execute unless predicate community:has_charm run tellraw @s {"translate":"community.missing_charm","hoverEvent":{"action":"show_text","contents":{"translate":"community.missing_charm.tooltip"}}}

# If the player has charm, activate or extend
execute if predicate community:has_charm if score favWaterBreathing shroomhearth matches 1.. run function community:favor/water_breathing/extend
execute if predicate community:has_charm if score favWaterBreathing shroomhearth matches 0 run function community:favor/water_breathing/activate