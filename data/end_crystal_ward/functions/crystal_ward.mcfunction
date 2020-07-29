# play particles around crystal
particle minecraft:portal ~ ~0.5 ~ 0.4 0.4 0.4 0.2 4

# play particles in a line towards targeted mob
execute positioned ~ ~1 ~ facing entity @e[tag=ward_target,sort=nearest,limit=1] feet run function end_crystal_ward:crystal_particles

# play sound on crystal
#playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 0.3 0.9