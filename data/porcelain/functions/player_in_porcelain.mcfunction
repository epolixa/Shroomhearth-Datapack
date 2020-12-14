################################################################
# player in porcelain
# mechanics relative to player in porcelain per tick
################################################################

# prevent exploits
clear @s #porcelain:blacklist

# activate porcelain item in porcelain
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}}, scores={usePorcelain=1..}] run function porcelain:exit_porcelain