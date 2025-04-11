# Executor: A player who placed a seat
# Position: The seat display entity which was placed

say setting seat display rotation

# Set 90-degree rotation based on rotation of player who placed the seat
execute store result score @s playerHorizontalRotation run data get entity @s Rotation[0]
execute if predicate seats:player_rotation_0 run data modify entity @n[tag=seat_display,tag=!initialized] Rotation[0] set value 0
execute if predicate seats:player_rotation_90 run data modify entity @n[tag=seat_display,tag=!initialized] Rotation[0] set value 90
execute if predicate seats:player_rotation_negative_180 run data modify entity @n[tag=seat_display,tag=!initialized] Rotation[0] set value -180
execute if predicate seats:player_rotation_negative_90 run data modify entity @n[tag=seat_display,tag=!initialized] Rotation[0] set value -90