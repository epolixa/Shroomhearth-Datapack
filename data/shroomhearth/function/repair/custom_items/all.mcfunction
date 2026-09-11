# attempt to repair any custom items
function shroomhearth:repair/custom_items/allay_bottle
function shroomhearth:repair/custom_items/harmony_cap
function shroomhearth:repair/custom_items/echoed_chorus_fruit
function shroomhearth:repair/custom_items/enchanted_golden_chorus_fruit
function shroomhearth:repair/custom_items/ender_tome
function shroomhearth:repair/custom_items/golden_chorus_fruit
function shroomhearth:repair/custom_items/porcelain_amphora
function shroomhearth:repair/custom_items/recall_whistle
function shroomhearth:repair/custom_items/relics
function shroomhearth:repair/custom_items/runes
function shroomhearth:repair/custom_items/spores

# play confirmation sound if any were repaired
execute as @s[tag=repaired] run playsound block.smithing_table.use player @a ~ ~ ~ 1 1
tag @s remove repaired