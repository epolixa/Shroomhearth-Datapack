# attempt to repair any custom items
function shroomhearth:repair/charm
function shroomhearth:repair/porcelain
function shroomhearth:repair/recall_whistle

# play confirmation soundd if any were repaired
execute as @s[tag=repaired] run playsound block.smithing_table.use player @a ~ ~ ~ 1 1
tag @s remove repaired