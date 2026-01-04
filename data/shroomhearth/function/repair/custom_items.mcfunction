# attempt to repair any custom items
function shroomhearth:repair/allay_bottle
function shroomhearth:repair/harmony_cap
function shroomhearth:repair/echoed_chorus_fruit
function shroomhearth:repair/enchanted_golden_chorus_fruit
function shroomhearth:repair/ender_tome
function shroomhearth:repair/golden_chorus_fruit
function shroomhearth:repair/porcelain
function shroomhearth:repair/recall_whistle
function shroomhearth:repair/spores

# play confirmation sound if any were repaired
execute as @s[tag=repaired] run playsound block.smithing_table.use player @a ~ ~ ~ 1 1
tag @s remove repaired