# Clear 1 charm and material item
clear @s #community:charm[custom_data={spore:"charm"}] 1
clear @s #community:permit_material 1

# Summon an xp orb
summon minecraft:experience_orb ~ ~1 ~ {Value:5}

# Play a sound
execute at @s run playsound minecraft:entity.villager.work_shepherd player @a ~ ~ ~ 2 2

# summon the permit
loot spawn ~ ~ ~ loot community:living_island_permit

# capture player UUID in fruit
data modify entity @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{spore:"living_island_permit"}}}},limit=1,sort=nearest] Item.components."minecraft:custom_data".targetPlayerUUID set from entity @s UUID