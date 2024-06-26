# keep chunk loaded in porcelain
# this is needed so that the player can go as far as they want in porcelain
forceload add ~ ~

# assign porcelain ID to porcelain anchor
scoreboard players set @s porcelainID 0
scoreboard players operation @s porcelainID = @p porcelainID