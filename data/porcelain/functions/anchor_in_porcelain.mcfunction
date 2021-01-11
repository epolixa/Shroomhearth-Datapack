################################################################
# anchor in porcelain
# things relative to player anchor in porcelain
################################################################

# initialize porcelain anchor ID and armor
execute unless score @s porcelainID matches 0.. run function porcelain:initialize_porcelain_anchor

# give player effect if they stray too far
execute at @a[distance=96..] if score @p porcelainID = @s porcelainID run effect give @p minecraft:blindness 2 1 true
execute at @a[distance=96..] if score @p porcelainID = @s porcelainID run title @p actionbar {"color":"white","translate":"item.minecraft.porcelain.fading"}

# make player exit if they stray too far
execute at @a[distance=104..] if score @p porcelainID = @s porcelainID run advancement grant @p only porcelain:exit_porcelain

# destroy self if there is no player close enough
execute unless entity @p[distance=..164] run kill @s

# particles around anchor
particle minecraft:end_rod ~ ~1.2 ~ 0.2 0.4 0.2 0.005 1 force