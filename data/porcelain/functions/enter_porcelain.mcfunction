################################################################
# enter porcelain
# manage entry passage to the porcelain
################################################################

# teleport to porcelain
execute in bityard:porcelain run teleport @s ~ 60 ~

# set gamemode to creative
gamemode creative @s

# revoke exit trigger, let them leave
advancement revoke @s only porcelain:exit_porcelain

# play effects
particle minecraft:end_rod ~ ~1.2 ~ 0.4 0.8 0.4 0.04 8
playsound minecraft:block.respawn_anchor.charge ambient @a ~ ~ ~ 1 0.1