advancement revoke @s only seats:player_interacted_with_seat

say player interacted with seat

ride @s mount @n[tag=seat_interaction,nbt={interaction:{}}]

playsound minecraft:block.wool.step block @a ~ ~ ~ 1 1.2

execute on vehicle run data remove entity @s interaction

advancement grant @s only seats:take_a_seat