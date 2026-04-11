# Executor: A player that has just interacted with a seat and should start riding it.
# Position: The player that has just interacted with a seat.

tellraw @a[tag=debug_seats] [{"text":"[shroomhearth:seats/advancement_reward/player_interacted_with_seat] "},{"selector":"@s"},{"text":" interacted with seat"}]


# Dismount any seats the player is currently riding before starting to ride target seat
ride @s dismount
ride @s mount @n[tag=seat_interaction,nbt={interaction:{}}]

# Play a sound effect for sitting down
playsound minecraft:block.wool.step block @a ~ ~ ~ 1 1.25

# Clear the interaction marker on target seat
execute on vehicle run data remove entity @s interaction

# Grant display advancement
advancement grant @s only shroomhearth:seats/take_a_seat

# Revoke trigger
advancement revoke @s only shroomhearth:seats/player_interacted_with_seat