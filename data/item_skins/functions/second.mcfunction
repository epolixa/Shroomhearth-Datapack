# set gear variants for mobs that meet the criteria

# pillager - soul crossbow
execute as @s[type=minecraft:pillager] if predicate item_skins:soul_crossbow run data modify entity @s HandItems[0].tag.CustomModelData set value 1

# set tag so not targeted again
tag @s add item_skin