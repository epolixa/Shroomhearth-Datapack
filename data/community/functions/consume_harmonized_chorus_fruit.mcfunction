# revoke trigger
advancement revoke @s only community:consume_harmonized_chorus_fruit

# tp to nearest player matching hcfUUID
execute positioned as @a[distance=0.1..,sort=nearest] if score @s hcfUUID1 = @p UUID1 if score @s hcfUUID2 = @p UUID2 if score @s hcfUUID3 = @p UUID3 if score @s hcfUUID4 = @p UUID4 run tp @s @p