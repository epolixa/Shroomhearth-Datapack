################################################################
# Super Ice Skates
# script for super ice skates usage
################################################################

# Give speed effect to anyone wearing boots over ice
execute as @a[nbt={Inventory: [{Slot:100b, tag:{relic:"super_ice_skates"}}]}] at @s if block ~ ~-0.5 ~ minecraft:ice run effect give @s speed 1 2 true
execute as @a[nbt={Inventory: [{Slot:100b, tag:{relic:"super_ice_skates"}}]}] at @s if block ~ ~-0.5 ~ minecraft:packed_ice run effect give @s speed 1 2 true
execute as @a[nbt={Inventory: [{Slot:100b, tag:{relic:"super_ice_skates"}}]}] at @s if block ~ ~-0.5 ~ minecraft:frosted_ice run effect give @s speed 1 2 true