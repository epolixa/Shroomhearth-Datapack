################################################################
# enter porcelain
# manage entry passage to the porcelain
################################################################

# teleport to porcelain
execute in bityard:porcelain run teleport @s ~ 60 ~

# set gamemode to creative
gamemode creative @s

# play effects
particle minecraft:end_rod ~ ~1.2 ~ 0.4 0.8 0.4 0.04 8
playsound minecraft:item.trident.return ambient @a ~ ~ ~ 1 0.1