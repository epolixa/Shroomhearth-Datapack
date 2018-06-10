################################################################
# Cursed Heart
# script for cursed heart
################################################################

# While wearing chestplate, give wither and regen
execute as @a[nbt={Inventory: [{Slot:102b, tag:{relic:"cursed_heart"}}]}] at @s run effect give @s minecraft:resistance 1 3
execute as @a[nbt={Inventory: [{Slot:102b, tag:{relic:"cursed_heart"}}]}] at @s run effect give @s minecraft:wither 1 1