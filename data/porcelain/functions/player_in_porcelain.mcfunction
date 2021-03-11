################################################################
# player in porcelain
# mechanics relative to player in porcelain per tick
################################################################

# prevent exploitable items in player inventory
clear @s #porcelain:blacklist

# prevent xp bottles from being deployed
kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle"}},distance=0..]

# prevent xp orbs
kill @e[type=experience_orb,distance=0..]

# activate porcelain item in porcelain
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}}, scores={usePorcelain=1..}] run function porcelain:exit_porcelain