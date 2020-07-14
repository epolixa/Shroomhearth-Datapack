################################################################
# use porcelain in overworld
# handles porcelain action
################################################################

# remove score
scoreboard players reset @s usePorcelain

# if inventory is not clear, show command
execute if data entity @s Inventory[1] run function porcelain:beckon_inventory

# if inventory is clear, enter the porcelain
execute unless data entity @s Inventory[1] if data entity @s Inventory[0] at @s run function porcelain:enter_porcelain
