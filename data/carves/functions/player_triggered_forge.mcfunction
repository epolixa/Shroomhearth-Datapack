# This function is executed by the nearest player pressing a button or otherwise interacting with blocks.

# Summon temporary armor stand to hold equipment and dragon scale
summon minecraft:armor_stand ~ ~ ~ {Tags:["dragon_forge"]}

# Set equipment item to armor stand mainhand
# Set dragon scale to armor stand offhand
data modify entity @e[tag=dragon_forge,limit=1,sort=nearest] HandItems[0] set from entity @e[type=minecraft:item_frame,limit=1,sort=nearest] Item
data modify entity @e[tag=dragon_forge,limit=1,sort=nearest] HandItems[1] set from entity @e[type=minecraft:glow_item_frame,limit=1,sort=nearest] Item

# Run checks on hand items
# TODO

# Set equipment item id to storage from armor stand mainhand
# Set dragon scale effect id from armor stand offhand
data modify storage carves equipment set from entity @e[tag=dragon_forge,limit=1,sort=nearest] HandItems[0].id
data modify storage carves dragon_scale set from entity @e[tag=dragon_forge,limit=1,sort=nearest] HandItems[1].tag.dragon_scale

# Set attribute target slot by running checks on mainhand
execute as @e[tag=dragon_forge,limit=1,sort=nearest] if predicate carves:is_chest run data modify storage carves slot set value "chest"

# Run application macro with data from storage
function carves:apply_dragon_scale_to_equipment with storage carves

# Reset storage data
data modify storage carves equipment set value ""
data modify storage carves dragon_scale set value ""
data modify storage carves slot set value ""

# Remove temporary armor stand
kill @e[tag=dragon_forge]