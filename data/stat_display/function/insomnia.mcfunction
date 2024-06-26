# spawn "insomnia" particles
execute if score favInsomnia shroomhearth matches 0 run particle minecraft:mycelium ~ ~1.8 ~ 0.2 0.2 0.2 0 2

# revoke trigger
advancement revoke @s only stat_display:insomnia