# This function is executed by the nearest player pressing a button or otherwise interacting with blocks.

# Summon temporary armor stand to hold equipment and dragon scale
summon minecraft:armor_stand ~ ~ ~ {Tags:["dragon_forge"]}

say armor stand summoned

# Set equipment item to armor stand mainhand
# Set dragon scale to armor stand offhand
data modify entity @e[tag=dragon_forge,limit=1,sort=nearest] HandItems[0] set from entity @e[type=minecraft:item_frame,limit=1,sort=nearest] Item
data modify entity @e[tag=dragon_forge,limit=1,sort=nearest] HandItems[1] set from entity @e[type=minecraft:glow_item_frame,limit=1,sort=nearest] Item

say armor stand hand data modified

# Run checks on hand items
# TODO

# Set equipment item id to storage from armor stand mainhand
# Set dragon scale effect id from armor stand offhand
data modify storage carves equipment set string entity @e[tag=dragon_forge,limit=1,sort=nearest] HandItems[0].id 10
data modify storage carves dragon_scale set string entity @e[tag=dragon_forge,limit=1,sort=nearest] HandItems[1].tag.scale

say equipment and scale type stored

# Set attribute target slot by running checks on mainhand
execute as @e[tag=dragon_forge,limit=1,sort=nearest] if predicate carves:is_mainhand run data modify storage carves slot set value "mainhand"
execute as @e[tag=dragon_forge,limit=1,sort=nearest] if predicate carves:is_head run data modify storage carves slot set value "head"
execute as @e[tag=dragon_forge,limit=1,sort=nearest] if predicate carves:is_chest run data modify storage carves slot set value "chest"
execute as @e[tag=dragon_forge,limit=1,sort=nearest] if predicate carves:is_legs run data modify storage carves slot set value "legs"
execute as @e[tag=dragon_forge,limit=1,sort=nearest] if predicate carves:is_feet run data modify storage carves slot set value "feet"

say slot stored

# Run application macro with data from storage
execute as @e[tag=dragon_forge,sort=nearest,limit=1] at @s if data entity @s HandItems[0].tag.AttributeModifiers run tellraw @p "This item already has an embedded Dragon Scale"
execute as @e[tag=dragon_forge,sort=nearest,limit=1] at @s if data storage carves {slot:""} run tellraw @p "Dragon Scales cannot be embedded in this item"
execute as @e[tag=dragon_forge,sort=nearest,limit=1] at @s unless data entity @s HandItems[0].tag.AttributeModifiers unless data storage carves {slot:""} run function carves:embed_dragon_scale with storage carves

say cleaning up..

# Reset storage data
data modify storage carves equipment set value ""
data modify storage carves dragon_scale set value ""
data modify storage carves slot set value ""

say reset storage

# Remove temporary armor stand
kill @e[tag=dragon_forge]

say killed armor stand

# Clear items from item frames
data remove entity @e[type=minecraft:item_frame,limit=1,sort=nearest] Item
data remove entity @e[type=minecraft:glow_item_frame,limit=1,sort=nearest] Item
