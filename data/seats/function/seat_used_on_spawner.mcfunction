advancement revoke @s only seats:seat_used_on_spawner

tag @s add reset_spawner

schedule function shroomhearth:reset_spawners_near_marked_players 1t

# Give the player a white seat item to replace the one erroneously used on the spawner.
# TODO: make this actually give the same color that was used on the spawner.
# Might require separate advancements for each color.
loot give @s loot seats:white_seat