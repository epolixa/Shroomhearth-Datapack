################################################################
# enter porcelain
# manage entry passage to the porcelain
################################################################

# summon armor stand in overworld
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["porcelain_overworld_anchor"],Marker:true,Invisible:true}

# teleport to porcelain
execute in bityard:porcelain run teleport @s ~ 64 ~
execute in bityard:porcelain run spreadplayers ~ ~ 0 1 false @s

# set gamemode to creative
gamemode creative @s

# revoke exit trigger, let them leave
advancement revoke @s only porcelain:exit_porcelain

# potion effects
effect give @s minecraft:slow_falling 1
effect give @s minecraft:blindness 1

# play effects
playsound minecraft:block.respawn_anchor.charge ambient @s ~ ~ ~ 1 0.1 1

# summon armor stand in porcelain
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["porcelain_anchor"],Marker:true,Invisible:true}