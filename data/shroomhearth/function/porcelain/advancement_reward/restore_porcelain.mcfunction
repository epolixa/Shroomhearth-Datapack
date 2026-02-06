# Executor: Player in the Porcelain
# Position: the Player


# check if player has porcelain
execute store result score @s has_porcelain run clear @s minecraft:warped_fungus_on_a_stick[custom_data={shroomhearth_id:"porcelain"}] 0

# loot give porcelain if they dont have it
loot give @s[scores={has_porcelain=0}] loot shroomhearth:porcelain

# revoke trigger
advancement revoke @s only shroomhearth:porcelain/location_restore_porcelain