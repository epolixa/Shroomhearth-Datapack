# Executes from the context of a player who triggered the dragon forge
# With data from carves in storage
# equipment - the item id of the armor or tool selected for application, eg "golden_chestplate"
# dragon_scale - the dragon scale attribute to apply to the equipment, eg "max_health"
# slot - the slot that the attribute should activate from, eg "chest"

say attempting to embed dragon scale

# First set base attributes to the equipment
# We need to do this because setting any custom attribute modifiers will wipe inherent attributes of an item
$item modify entity @s weapon.mainhand carves:base/$(equipment)

$say applied base attributes to $(equipment)

# Then set the dragon scale attribute according to slot
$item modify entity @s weapon.mainhand carves:$(dragon_scale)/$(slot)

$say applied $(dragon_scale) attributes to $(slot)

# Summon a result item and copy item nbt to it
$summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:$(equipment)",Count:1},Tags:["dragon_forge_result"]}
data modify entity @e[tag=dragon_forge_result,sort=nearest,limit=1] Item set from entity @s HandItems[0]

say result item summoned

playsound minecraft:block.anvil.use player @a ~ ~1 ~ 1 0.8
particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.01 3