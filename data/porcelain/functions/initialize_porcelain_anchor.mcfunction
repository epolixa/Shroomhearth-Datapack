# assign porcelain ID to porcelain anchor
scoreboard players set @s porcelainID 0
scoreboard players operation @s porcelainID = @p porcelainID

# copy player head to porcelain anchor
loot replace entity @s armor.head kill @p

# copy player armor to porcelain anchor
item entity @s armor.feet copy entity @p armor.feet
item entity @s armor.legs copy entity @p armor.legs
item entity @s armor.chest copy entity @p armor.chest