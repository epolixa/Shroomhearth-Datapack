# Executor: Newly summoned Porcelain anchor
# Position: At the anchor

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/initialize_porcelain_anchor] Initializing Porcelain anchor for "},{"selector":"@p"}]


# keep chunk loaded in porcelain
# this is needed so that the player can go as far as they want in porcelain
forceload add ~ ~

# assign porcelain ID to porcelain anchor
scoreboard players set @s porcelain_id 0
scoreboard players operation @s porcelain_id = @p porcelain_id