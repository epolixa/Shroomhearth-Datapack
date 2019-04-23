# play particles around crystal
particle minecraft:dragon_breath ~ ~0.5 ~ 0.5 0.5 0.5 0 3

# play particles in a line towards targeted mob
execute facing entity @e[tag=ward_target,sort=nearest,limit=1] feet run function end_crystal_ward:crystal_particles

# play sound on crystal
playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 2 0.9