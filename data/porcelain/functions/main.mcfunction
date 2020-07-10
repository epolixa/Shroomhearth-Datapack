################################################################
# main
# porcelain anchor control
################################################################

# relative to player in porcelain
execute as @a[nbt={Dimension:"bityard:porcelain"}] at @s run function porcelain:player_in_porcelain

# relative to player in overworld
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s run function porcelain:player_in_overworld

# relative to anchor in porcelain
execute as @e[type=minecraft:armor_stand,tag=porcelain_anchor] at @s run function porcelain:anchor_in_porcelain

# relative to anchor in overworld
execute as @e[type=minecraft:armor_stand,tag=porcelain_overworld_anchor] at @s run function porcelain:anchor_in_overworld