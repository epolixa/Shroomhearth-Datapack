# Executor: A player that has just used a seat on a spawner.
# Position: The player

tellraw @a[tag=debug_seats] [{"text":"[shroomhearth:seats/advancement_reward/seat_used_on_spawner] "},{"selector":"@s"},{"text":" used seat on spawner"}]


# Mark the player for spawner resetting
tag @s add reset_spawner

# Schedule a function to reset spawners near marked players after 1 tick
schedule function shroomhearth:reset_spawners_near_marked_players 1t

# Give the player a white seat item to replace the one erroneously used on the spawner.
# TODO: make this actually give the same color that was used on the spawner.
# Might require separate advancements for each color.
loot give @s loot shroomhearth:seats/white_seat

# Revoke trigger
advancement revoke @s only shroomhearth:seats/seat_used_on_spawner