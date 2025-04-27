# Context: A seat interaction entity that has been attacked and should drop an item before being removed.
# Position: The seat interaction entity that was attacked.

# Spawn an item according to the color of the seat
execute if entity @s[tag=white_seat] run loot spawn ~ ~ ~ loot seats:white_seat
execute if entity @s[tag=light_gray_seat] run loot spawn ~ ~ ~ loot seats:light_gray_seat
execute if entity @s[tag=gray_seat] run loot spawn ~ ~ ~ loot seats:gray_seat
execute if entity @s[tag=black_seat] run loot spawn ~ ~ ~ loot seats:black_seat
execute if entity @s[tag=brown_seat] run loot spawn ~ ~ ~ loot seats:brown_seat
execute if entity @s[tag=red_seat] run loot spawn ~ ~ ~ loot seats:red_seat
execute if entity @s[tag=orange_seat] run loot spawn ~ ~ ~ loot seats:orange_seat
execute if entity @s[tag=yellow_seat] run loot spawn ~ ~ ~ loot seats:yellow_seat
execute if entity @s[tag=lime_seat] run loot spawn ~ ~ ~ loot seats:lime_seat
execute if entity @s[tag=green_seat] run loot spawn ~ ~ ~ loot seats:green_seat
execute if entity @s[tag=light_blue_seat] run loot spawn ~ ~ ~ loot seats:light_blue_seat
execute if entity @s[tag=blue_seat] run loot spawn ~ ~ ~ loot seats:blue_seat
execute if entity @s[tag=cyan_seat] run loot spawn ~ ~ ~ loot seats:cyan_seat
execute if entity @s[tag=purple_seat] run loot spawn ~ ~ ~ loot seats:purple_seat
execute if entity @s[tag=magenta_seat] run loot spawn ~ ~ ~ loot seats:magenta_seat
execute if entity @s[tag=pink_seat] run loot spawn ~ ~ ~ loot seats:pink_seat

# Play a breaking sound effect
playsound minecraft:block.wool.break block @a ~ ~ ~ 1 1.2

# Remove the seat interaction entity and attached display entity
execute on passengers run kill @s[tag=seat]
kill @s