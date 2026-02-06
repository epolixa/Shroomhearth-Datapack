# Executor: Player with low health
# Position: the Player

tellraw @a[tag=debug_status_visibility] [{"text":"[shroomhearth:status_visibility/advancement_reward/low_health] "},{"selector":"@s"},{"text":" has low health"}]


# Emit "hurt" particles on player with additional chances at lower health levels
execute if predicate shroomhearth:status_visibility/low_health_particle_chance run particle minecraft:block{block_state:{Name:"minecraft:fire_coral_block"}} ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute if score @s health matches 1..8 if predicate shroomhearth:status_visibility/low_health_particle_chance run particle minecraft:block{block_state:{Name:"minecraft:fire_coral_block"}} ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute if score @s health matches 1..6 if predicate shroomhearth:status_visibility/low_health_particle_chance run particle minecraft:block{block_state:{Name:"minecraft:fire_coral_block"}} ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute if score @s health matches 1..4 if predicate shroomhearth:status_visibility/low_health_particle_chance run particle minecraft:block{block_state:{Name:"minecraft:fire_coral_block"}} ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute if score @s health matches 1..2 if predicate shroomhearth:status_visibility/low_health_particle_chance run particle minecraft:block{block_state:{Name:"minecraft:fire_coral_block"}} ~ ~0.9 ~ 0.2 0.45 0.2 0 1

# Revoke trigger
advancement revoke @s only shroomhearth:status_visibility/low_health