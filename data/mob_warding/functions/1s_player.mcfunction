# show particles around end crystals in range
execute positioned ~-32 ~-32 ~-32 at @e[type=minecraft:end_crystal,nbt={ShowBottom:0b},dx=64,dy=64,dz=64] run function mob_warding:range_particles
