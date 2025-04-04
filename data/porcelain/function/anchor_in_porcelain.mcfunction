# initialize porcelain anchor ID and armor if has not been assigned
execute unless score @s porcelainID matches 0.. run function porcelain:initialize_porcelain_anchor

# destroy self if there is no player in porcelain
execute unless entity @p[distance=0..] run forceload remove ~ ~
execute unless entity @p[distance=0..] run kill @s