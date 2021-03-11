################################################################
# use porcelain shrine
# handles porcelain action
################################################################

# if inventory is not clear, show command
execute if data entity @s Inventory[0] run function porcelain:beckon_inventory

# if inventory is clear, enter the porcelain
execute unless data entity @s Inventory[0] run function porcelain:enter_porcelain
