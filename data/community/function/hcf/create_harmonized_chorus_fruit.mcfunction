# Clear 1 charm and material item
clear @s #community:charm[custom_data={shroomhearth_id"charm"}] 1
clear @s #community:harmonized_chorus_fruit_material 1

# Summon an xp orb
summon minecraft:experience_orb ~ ~1 ~ {Value:5}

# Play a sound
execute at @s run playsound minecraft:entity.allay.item_taken player @a ~ ~ ~ 2 2

# summon the fruit
loot spawn ~ ~ ~ loot community:harmonized_chorus_fruit

# capture player UUID in fruit
data modify entity @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{shroomhearth_id"harmonized_chorus_fruit"}}}},limit=1,sort=nearest] Item.components."minecraft:custom_data".targetPlayerUUID set from entity @s UUID