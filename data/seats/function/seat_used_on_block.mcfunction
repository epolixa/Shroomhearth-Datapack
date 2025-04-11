advancement revoke @s only seats:seat_used_on_block

tag @s add placed_seat

say seat used on block

execute as @n[tag=seat_interaction,tag=!initialized] at @s run function seats:check_seat

tag @s remove placed_seat