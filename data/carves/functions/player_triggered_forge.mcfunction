# This function is executed by the nearest player pressing a button or otherwise interacting with blocks.

# Summon temporary armor stand to hold equipment and dragon scale
summon minecraft:armor_stand ~ ~ ~ {Tags:["dragon_forge"]}

# Set equipment item to armor stand mainhand


# Set equipment item id to storage from armor stand mainhand
# Set dragon scale effect id from armor stand offhand
data modify storage carves equipment set value "golden_chestplate"
data modify storage carves dragon_scale set value "max_health"

# Set attribute target slot by running checks on mainhand
data modify storage carves slot set value "chest"

# Run application macro with data from storage
function carves:apply_dragon_scale_to_equipment with storage carves