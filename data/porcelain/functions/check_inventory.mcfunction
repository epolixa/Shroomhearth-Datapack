################################################################
# check inventory
# make sure inventory is clear before entering the porcelain
################################################################

# if inventory is clear, enter the porcelain
execute as @s[nbt={Inventory:[]}] run function porcelain:enter_porcelain

# if inventory is not clear, show command
execute as @s[nbt=!{Inventory:[]}] run function porcelain:beckon
