################################################################
# exit porcelain
# manage leaving the porcelain
################################################################

# clear inventory
clear @s

# teleport to porcelain entrance in overworld
execute in minecraft:overworld run teleport -347 66 263

# set gamemode to survival
gamemode survival @s

# play effects
particle minecraft:end_rod ~ ~1.2 ~ 0.4 0.8 0.4 0.04 8
playsound minecraft:block.respawn_anchor.charge ambient @a ~ ~ ~ 1 0.1