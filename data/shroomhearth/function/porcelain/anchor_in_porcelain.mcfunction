# Executor: A Porcelain anchor
# Position: At the anchor


# Initialize anchor if it has not been initialized
execute unless score @s porcelain_id matches 0.. run function shroomhearth:porcelain/initialize_porcelain_anchor

# Destroy self if there are no players in The Porcelain
execute unless entity @p[distance=0..] run forceload remove ~ ~
execute unless entity @p[distance=0..] run kill @s