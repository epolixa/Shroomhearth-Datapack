# Executor: An allay that is being bottled and has an item
# Position: the allay

tellraw @a[tag=debug_bottle_of_allay] [{"text":"[bottle_of_allay.give_allay_item_to_player] "},{"selector":"@s"},{"text":" gave "},{"nbt":"equipment.mainhand.id","entity":"@s"},{"text":" to "},{"selector":"@p[tag=used_amethyst_bottle]"}]

# Summon template item entity
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:air",Count:1b},PickupDelay:0,Tags:["bottled_allay_item"]}

# Assign the item
item replace entity @n[tag=bottled_allay_item] contents from entity @s weapon.mainhand