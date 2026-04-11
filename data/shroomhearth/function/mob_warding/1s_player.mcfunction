# Executor: A player wearing a mob head
# Position: The player

tellraw @a[tag=debug_mob_warding] [{"text":"[shroomhearth:mob_warding/1s_player] Player "},{"selector":"@s"},{"text":" wearing mob head"}]


# show particles around players wearing mob head in range
execute positioned ~-32 ~-32 ~-32 if entity @e[type=minecraft:end_crystal,nbt={ShowBottom:0b},dx=64,dy=64,dz=64] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.2 0.3 0.2 0.01 4
