# play particles around crystal
particle minecraft:portal ~ ~0.5 ~ 0.4 0.4 0.4 0.2 4

# play particles in a line towards targeted mob
execute positioned ~ ~1 ~ facing entity @e[tag=ward_target,sort=nearest,limit=1] feet run function mob_warding:crystal_particles

# grant advancement to players near enough to witness the warding
advancement grant @p[distance=..4] only mob_warding:mob_zapper