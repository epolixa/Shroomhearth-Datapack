advancement revoke @s only seats:player_interacted_with_seat

say player interacted with seat

ride @s mount @n[tag=seat_interaction,nbt={interaction:{}}]

execute on vehicle run data remove entity @s interaction