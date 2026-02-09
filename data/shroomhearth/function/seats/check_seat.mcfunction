# Executor: A seat interaction entity that is being initialized
# Position: The seat interaction entity.

tellraw @a[tag=debug_seats] [{"text":"[shroomhearth:seats/check_seat] Checking seat placement at "},{"nbt":"Pos","entity":"@s"}]


# Adjust seat height for some blocks
execute if block ~ ~-0.0625 ~ #minecraft:stairs[half=bottom] run tp ~ ~-0.5 ~
execute if block ~ ~-0.5625 ~ #shroomhearth:seats/fences_and_walls run tp ~ ~-0.5 ~

# Cancel and drop if there is no solid support block one texel below
execute at @s if block ~ ~-0.0625 ~ #shroomhearth:seats/intangible run tag @s add drop

# Cancel and drop if there is another seat already occupying the same space
execute at @s if entity @n[tag=seat_interaction,tag=initialized,distance=..0.4375] run tag @s add drop
execute if entity @s[tag=drop] run function shroomhearth:seats/drop_seat

# If the seat is valid, initialize it
execute if entity @s[tag=!drop] run function shroomhearth:seats/initialize_seat