# Revoke trigger
advancement revoke @s only allay_bottle:allay_bottle_used_on_spawner

# Mark the player to fix nearby spawners next tick
tag @s add allay_spawner

# Schedule fixer for next tick 
schedule function allay_bottle:reset_spawners_near_marked_players 1t

# Restore the consumed bottle
loot give @s loot allay_bottle:allay_bottle