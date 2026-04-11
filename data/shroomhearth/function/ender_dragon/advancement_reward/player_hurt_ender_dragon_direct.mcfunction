# Executor: a player who has just damaged the ender dragon directly with a melee weapon
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/player_hurt_ender_dragon_direct] "},{"selector":"@s"},{"text":" hurt the Ender Dragon with a melee attack"}]


execute as @n[tag=omen_ender_dragon,scores={health_percent=..30,carve_drop_potential=1..}] at @s if predicate shroomhearth:ender_dragon/ender_dragon_carve_chance_critical run function shroomhearth:ender_dragon/drop_carve
execute as @n[tag=omen_ender_dragon,scores={health_percent=31..,carve_drop_potential=1..}] at @s if predicate shroomhearth:ender_dragon/ender_dragon_carve_chance run function shroomhearth:ender_dragon/drop_carve

# Revoke trigger
advancement revoke @s only shroomhearth:ender_dragon/player_hurt_ender_dragon_direct