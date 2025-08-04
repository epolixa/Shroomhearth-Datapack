# Executor: A player who just unbottled an allay and has an item in their offhand
# Position: the player

tellraw @a[tag=debug_bottle_of_allay] [{"text":"[bottle_of_allay.give_offhand_item_to_allay] "},{"selector":"@s"},{"text":" gave "},{"nbt":"equipment.offhand.id","entity":"@s"},{"text":" to "},{"selector":"@n[tag=unbottled_allay]"}]

# Assign the item
item replace entity @n[tag=unbottled_allay] weapon.mainhand from entity @s weapon.offhand
item modify entity @n[tag=unbottled_allay] weapon.mainhand bottle_of_allay:set_count_1

# Reduce the item's count by 1
execute as @s[gamemode=!creative] run item modify entity @s weapon.offhand bottle_of_allay:add_count_-1