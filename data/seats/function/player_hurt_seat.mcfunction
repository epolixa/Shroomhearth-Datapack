advancement revoke @s only seats:player_hurt_seat

say player attacked seat

execute as @n[tag=seat_interaction,nbt={attack:{}}] at @s run function seats:drop_seat