# summon the fruit
loot spawn ~ ~ ~ loot community:harmonized_chorus_fruit

# capture player UUID in fruit
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{bityard:"harmonized_chorus_fruit"}}},limit=1,sort=nearest] Item.tag.targetPlayerUUID set from entity @s UUID