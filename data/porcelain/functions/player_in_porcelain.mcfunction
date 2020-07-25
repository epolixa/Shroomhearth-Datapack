################################################################
# player in porcelain
# mechanics relative to player in porcelain per tick
################################################################

# prevent exploits
clear @s minecraft:ender_chest
clear @s minecraft:experience_bottle
clear @s minecraft:ender_pearl

# constant night vision
effect give @s minecraft:night_vision 11 0 true

# activate porcelain item in porcelain
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}}, scores={usePorcelain=1..}] run function porcelain:exit_porcelain