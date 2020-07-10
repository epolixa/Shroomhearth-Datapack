################################################################
# check inventory
# make sure inventory is clear before entering the porcelain
################################################################

# if inventory is not clear, show command
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}}] if data entity @s Inventory[1] run function porcelain:beckon

# if inventory is clear, enter the porcelain
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}}] unless data entity @s Inventory[1] if data entity @s Inventory[0] run function porcelain:enter_porcelain
