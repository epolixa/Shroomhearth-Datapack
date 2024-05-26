# revoke trigger
advancement revoke @s only sitting:player_interacted_with_cushion

# target nearest valid item frame
tag @e[predicate=sitting:cushion] add target_cushion

# check if item frame contains items
execute unless data entity @e[tag=target_cushion,limit=1,sort=nearest] Item run function sitting:start_sitting

# untag cushion
tag @e[tag=target_cushion,limit=1,sort=nearest] remove target_cushion