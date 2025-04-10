say checking seat

# Cancel and drop if there is another seat already occupying the same space
execute if entity @n[tag=seat_interaction,tag=initialized,distance=..0.4375] run tag @s add canceled

# Cancel and drop if there is no solid support block below
execute if block ~ ~-0.0625 ~ #seats:intangible run tag @s add canceled

execute if entity @s[tag=canceled] run function seats:drop_seat
execute if entity @s[tag=!canceled] run function seats:initialize_seat