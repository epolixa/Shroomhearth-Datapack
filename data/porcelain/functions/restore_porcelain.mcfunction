# check if player has porcelain
execute store result score @s hasPorcelain run clear @s minecraft:warped_fungus_on_a_stick{spore:"porcelain"} 0

# loot give porcelain if they dont have it
loot give @s[scores={hasPorcelain=0}] loot porcelain:porcelain

# revoke trigger
advancement revoke @s only porcelain:location_restore_porcelain