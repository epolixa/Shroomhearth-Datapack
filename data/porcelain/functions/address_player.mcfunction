################################################################
# address player
# check the nearest player
################################################################

# remove score
scoreboard players set @s porcelainItem 0 

# check nearest player's inventory
execute as @p[nbt={Dimension:"minecraft:overworld"}] run function porcelain:check_inventory
