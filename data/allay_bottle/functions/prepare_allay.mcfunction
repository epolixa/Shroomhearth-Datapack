# Drop a bottle for the player
loot spawn ~ ~ ~ loot allay_bottle:glass_bottle

# Fix default name
data merge entity @s[nbt={CustomName:'{"italic":false,"translate":"allay_bottle.allay_bottle"}'}] {CustomName:""}

# Tag the allay so it does not get checked again
tag @s add from_bottle

# Play sound on allay
playsound minecraft:entity.allay.item_given neutral @a ~ ~ ~ 1 1.2