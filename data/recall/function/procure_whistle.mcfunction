# Check if the player has material
execute store result score @s hasWhistleMaterial run clear @s #recall:whistle_material 0

# If they don't have material, send a message
execute unless score @s hasWhistleMaterial matches 1.. run tellraw @s {"translate":"recall.cannot_procure_whistle","hover_event":{"action":"show_text","value":{"translate":"recall.cannot_procure_whistle_tooltip"}}}

# If the player has material, procure whistle
execute if score @s hasWhistleMaterial matches 1.. run function recall:procure_whistle_success