# Context: A seat interaction entity that has been attacked and should drop an item before being removed.
# Position: The seat interaction entity that was attacked.

say dropping seat

execute if entity @s[tag=white_seat] run loot spawn ~ ~ ~ loot seats:white_seat

playsound minecraft:block.wool.break block @a ~ ~ ~ 1 1.2

execute on passengers run kill @s[tag=seat]
kill @s