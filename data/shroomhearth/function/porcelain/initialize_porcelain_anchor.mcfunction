# Executor: Newly summoned Porcelain anchor
# Position: At the anchor


# keep chunk loaded in porcelain
# this is needed so that the player can go as far as they want in porcelain
forceload add ~ ~

# assign porcelain ID to porcelain anchor
scoreboard players set @s porcelain_id 0
scoreboard players operation @s porcelain_id = @p porcelain_id