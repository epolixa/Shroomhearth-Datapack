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

# play effects
function porcelain:travel_effects

# summon armor stand in porcelain
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["porcelain_anchor"],Marker:true,Invisible:true}