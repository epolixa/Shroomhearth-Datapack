# Executor: A player who used an allay bottle on a spawner
# Position: the player

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/advancement_reward/allay_bottle_used_on_spawner] Player used allay bottle on spawner"}]


# Revoke trigger
advancement revoke @s only shroomhearth:allay_bottle/allay_bottle_used_on_spawner

# Mark the player to fix nearby spawners next tick
tag @s add reset_spawner

# Schedule fixer for next tick 
schedule function shroomhearth:reset_spawners_near_marked_players 1t

# Restore the consumed bottle
loot give @s loot shroomhearth:allay_bottle/allay_bottle