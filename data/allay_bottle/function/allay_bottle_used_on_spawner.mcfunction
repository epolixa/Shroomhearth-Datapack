# Revoke trigger
advancement revoke @s only allay_bottle:allay_bottle_used_on_spawner

# Mark the player to fix nearby spawners next tick
tag @s add reset_spawner

# Schedule fixer for next tick 
schedule function shroomhearth:reset_spawners_near_marked_players 1t

# Restore the consumed bottle
loot give @s loot allay_bottle:allay_bottle