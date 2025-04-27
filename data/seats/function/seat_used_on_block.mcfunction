advancement revoke @s only seats:seat_used_on_block

tag @s add placed_seat

# Check if the placed seat is valid
execute as @n[tag=seat_interaction,tag=!initialized] at @s run function seats:check_seat

tag @s remove placed_seat