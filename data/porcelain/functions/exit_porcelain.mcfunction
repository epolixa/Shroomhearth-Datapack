################################################################
# exit porcelain
# manage leaving the porcelain
################################################################

# clear inventory
clear @s

# play effects
particle minecraft:end_rod ~ ~1.2 ~ 0.4 0.8 0.4 0.04 8
playsound minecraft:item.trident.return ambient @a ~ ~ ~ 1 0.1

# teleport to porcelain entrance in overworld
execute in minecraft:overworld run teleport -347 66 263

# set gamemode to survival
gamemode survival @s