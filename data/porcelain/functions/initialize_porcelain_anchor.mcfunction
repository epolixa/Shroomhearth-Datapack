# assign porcelain ID to porcelain anchor
scoreboard players set @s porcelainID 0
scoreboard players operation @s porcelainID = @p porcelainID

# copy player armor to porcelain anchor (cosmetic)
item entity @s armor.feet copy entity @p armor.feet
item entity @s armor.legs copy entity @p armor.legs
item entity @s armor.chest copy entity @p armor.chest
item entity @s armor.head copy entity @p armor.head
stopsound @p * minecraft:item.armor.equip_generic
stopsound @p * minecraft:item.armor.equip_leather
stopsound @p * minecraft:item.armor.equip_iron
stopsound @p * minecraft:item.armor.equip_chain
stopsound @p * minecraft:item.armor.equip_gold
stopsound @p * minecraft:item.armor.equip_diamond
stopsound @p * minecraft:item.armor.equip_netherite
stopsound @p * minecraft:item.armor.equip_elytra
stopsound @p * minecraft:item.armor.equip_turtle

# clear player inventory
clear @p

# give player porcelain item
loot give @p loot porcelain:porcelain