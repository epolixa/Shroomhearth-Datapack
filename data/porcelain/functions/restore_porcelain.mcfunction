# check if player has porcelain
execute store result score @s hasPorcelain run clear @s minecraft:warped_fungus_on_a_stick{display:{Name:"{\"italic\":false,\"translate\":\"item.minecraft.porcelain\"}"},CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1} 0

# loot give porcelain if they dont have it
loot give @s[scores={hasPorcelain=0}] loot porcelain:porcelain

# revoke trigger
advancement revoke @s only porcelain:location_restore_porcelain