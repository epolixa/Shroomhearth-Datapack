# Executes from the context of a player who has just damaged the ender dragon directly with a melee weapon.

say I just damaged the ender dragon with a melee weapon!

execute if predicate carves:ender_dragon_carve_chance run function carves:drop_carve

# Revoke trigger
advancement revoke @s only carves:player_hurt_ender_dragon_melee