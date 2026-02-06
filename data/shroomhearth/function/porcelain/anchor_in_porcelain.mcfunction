# Executor: A Porcelain anchor
# Position: At the anchor

#tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/anchor_in_porcelain] Pulsing anchor in The Porcelain "},{"selector":"@s"}]


# Initialize anchor if it has not been initialized
execute unless score @s porcelain_id matches 0.. run function shroomhearth:porcelain/initialize_porcelain_anchor

# Destroy self if there are no players in The Porcelain
execute unless entity @p[distance=0..] run forceload remove ~ ~
execute unless entity @p[distance=0..] run kill @s