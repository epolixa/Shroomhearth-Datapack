# Executes from the context of a player who has just damaged the ender dragon directly with a melee weapon.

say I just damaged the ender dragon directly!

execute as @n[tag=omen_ender_dragon,scores={carve_drop_potential=1..}] at @s if predicate ender_dragon:ender_dragon_carve_chance run function ender_dragon:drop_carve

# Revoke trigger
advancement revoke @s only ender_dragon:player_hurt_ender_dragon_direct