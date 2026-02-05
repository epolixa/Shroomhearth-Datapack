# tp to nearest player matching hcfUUID
execute positioned as @a[predicate=!porcelain:in_porcelain,sort=nearest] if score @s hcfuuid_1 = @p uuid_1 if score @s hcfuuid_2 = @p uuid_2 if score @s hcfuuid_3 = @p uuid_3 if score @s hcfuuid_4 = @p uuid_4 run function community:hcf/harmonize

# revoke trigger
advancement revoke @s only community:consume_harmonized_chorus_fruit