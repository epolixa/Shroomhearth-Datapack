# Executor: An end crystal with ShowBottom:0b
# Position: The end crystal

tellraw @a[tag=debug_mob_warding] [{"text":"[shroomhearth:mob_warding/crystal_ward] End crystal emitting warding effects"}]


# play particles around crystal
particle minecraft:dragon_breath ~ ~0.5 ~ 0.2 0.3 0.2 0.01 4

# grant advancement to players near enough to witness the warding
advancement grant @p[distance=..16] only shroomhearth:mob_warding/mob_zapper