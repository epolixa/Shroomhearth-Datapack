# Executes from the context of a player who triggered the dragon forge
# With data from carves in storage
# equipment - the item id of the armor or tool selected for application, eg "golden_chestplate"
# dragon_scale - the dragon scale attribute to apply to the equipment, eg "max_health"
# slot - the slot that the attribute should activate from, eg "chest"

# First set base attributes to the equipment
# We need to do this because setting any custom attribute modifiers will wipe inherent attributes of an item
$item modify entity @e[tag=dragon_forge,sort=nearest,limit=1] weapon.mainhand carves:base/$(equipment)

# Then set the dragon scale attribute according to slot
$item modify entity @e[tag=dragon_forge,sort=nearest,limit=1] weapon.mainhand carves:$(dragon_scale)/$(slot)

# Summon a result item and copy item nbt to it
summon minecraft:item ~ ~ ~ {Tags:["dragon_forge_result"]}
data modify entity @e[tag=dragon_forge_result,sort=nearest,limit=1] Item set from entity @e[tag=dragon_forge_result,sort=nearest,limit=1] Item