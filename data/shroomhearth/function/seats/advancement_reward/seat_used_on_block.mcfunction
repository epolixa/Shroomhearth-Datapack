# Executor: A player that has just used a seat on a block.
# Position: The player

tellraw @a[tag=debug_seats] [{"text":"[shroomhearth:seats/advancement_reward/seat_used_on_block] "},{"selector":"@s"},{"text":" used seat on block"}]


# Mark the player as having placed a seat
tag @s add placed_seat

# Check if the placed seat is valid
execute as @n[tag=seat_interaction,tag=!initialized] at @s run function shroomhearth:seats/check_seat

# Remove tag
tag @s remove placed_seat

# Revoke trigger
advancement revoke @s only shroomhearth:seats/seat_used_on_block