# Executor: A player that just interacted with a mob with a name tag
# Position: The player, or the position of the ray

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/name_tag_raycast] raycasting step "},{"score":{"name":"raycast_steps","objective":"shroomhearth"}}]

particle minecraft:underwater ^ ^ ^ 0 0 0 0 1 normal @a[tag=debug_runes]


# Cast the ray and stop when it hits a name tag target
execute positioned ~-0.99 ~-0.99 ~-0.99 as @e[tag=!raycaster,predicate=shroomhearth:runes/is_name_tag_target,dx=0,dy=0,dz=0] positioned ~0.99 ~0.99 ~0.99 as @s[dx=0,dy=0,dz=0] run return run function shroomhearth:runes/hit_name_tag_target
scoreboard players remove raycast_steps shroomhearth 1
execute if score raycast_steps shroomhearth matches 1.. positioned ^ ^ ^0.1 run function shroomhearth:runes/name_tag_raycast
