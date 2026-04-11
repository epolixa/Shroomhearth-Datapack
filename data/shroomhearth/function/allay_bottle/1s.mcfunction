# Executor: An Allay that has not been assigned to a team
# Position: the allay

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/1s] Assigning Allay to no-collide team"}]


# Assign allays to special team for no collision
team join allay @s
tag @s add no_collide