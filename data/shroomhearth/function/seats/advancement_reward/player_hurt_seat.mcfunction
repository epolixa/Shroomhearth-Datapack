# Executor: A player that attacked a seat interaction entity.
# Position: The player

tellraw @a[tag=debug_seats] [{"text":"[shroomhearth:seats/advancement_reward/player_hurt_seat] "},{"selector":"@s"},{"text":" hurt seat"}]


# Drop seat item at the nearest attacked seat interaction entity
execute as @n[tag=seat_interaction,nbt={attack:{}}] at @s run function shroomhearth:seats/drop_seat

# Revoke trigger
advancement revoke @s only shroomhearth:seats/player_hurt_seat