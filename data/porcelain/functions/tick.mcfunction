################################################################
# main
# porcelain anchor control
################################################################

# relative to player using porcelain in overworld
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}, Dimension:"minecraft:overworld"},scores={usePorcelain=1..}] at @s run function porcelain:use_porcelain_in_overworld

# relative to player in porcelain
execute as @a[nbt={Dimension:"porcelain:the_porcelain"}] at @s run function porcelain:player_in_porcelain

# dissonance for players using porcelain in other dimensions
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}, Dimension:"minecraft:the_nether"},scores={usePorcelain=1..}] at @s run function porcelain:beckon_dissonance
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:1}}, Dimension:"minecraft:the_end"},scores={usePorcelain=1..}] at @s run function porcelain:beckon_dissonance

# relative to anchor in overworld
execute as @e[type=minecraft:armor_stand,tag=overworld_anchor] at @s run function porcelain:anchor_in_overworld

# relative to anchor in porcelain
execute as @e[type=minecraft:armor_stand,tag=porcelain_anchor] at @s run function porcelain:anchor_in_porcelain