advancement revoke @s only seats:player_interacted_with_seat

# Dismount any seats the player is currently riding before starting to ride target seat
ride @s dismount
ride @s mount @n[tag=seat_interaction,nbt={interaction:{}}]

# Play a sound effect for sitting down
playsound minecraft:block.wool.step block @a ~ ~ ~ 1 1.2

# Clear the interaction marker on target seat
execute on vehicle run data remove entity @s interaction

advancement grant @s only seats:take_a_seat