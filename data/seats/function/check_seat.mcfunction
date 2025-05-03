# Context: A seat interaction entity that is being initialized
# Position: The seat interaction entity.

# Adjust seat height for some blocks
# TODO: Break this out into a separate function and predicates for more block types
execute if block ~ ~-0.0625 ~ #minecraft:stairs[half=bottom] run tp ~ ~-0.5 ~
execute if block ~ ~-0.5625 ~ #seats:fences_and_walls run tp ~ ~-0.5 ~

# Cancel and drop if there is no solid support block one texel below
execute at @s if block ~ ~-0.0625 ~ #seats:intangible run tag @s add drop

# Cancel and drop if there is another seat already occupying the same space
execute at @s if entity @n[tag=seat_interaction,tag=initialized,distance=..0.4375] run tag @s add drop

execute if entity @s[tag=drop] run function seats:drop_seat
execute if entity @s[tag=!drop] run function seats:initialize_seat