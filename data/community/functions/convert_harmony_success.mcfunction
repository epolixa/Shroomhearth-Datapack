# This function gets called when a player tries to convert their harmony into a memento and succeeds

# Reduce player's harmony by 100
scoreboard players remove @s harmony 100

# Give a memento to the player
loot give @s loot community:memento

# Send a friendly success message to the player
tellraw @s {"translate":"community.converted_harmony","hoverEvent":{"action":"show_text","contents":{"translate":"community.converted_harmony_tooltip"}}}