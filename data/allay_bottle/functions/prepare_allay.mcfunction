# Set liked player to player who summoned it
data modify entity @s Brain.memories."minecraft:liked_player".value set from entity @p[tag=used_allay_bottle] UUID

# If there is an item entity at the same position as the allay, make the allay hold it
execute as @e[type=minecraft:item,distance=..0.6,sort=nearest,limit=1] run function allay_bottle:give_allay_nearby_item

# Fix default name
data merge entity @s[nbt={CustomName:'{"italic":false,"translate":"allay_bottle.allay_bottle"}'}] {CustomName:""}

# Drop a bottle for the player
loot spawn ~ ~ ~ loot allay_bottle:glass_bottle

# Tag the allay so it does not get checked again
tag @s add from_bottle

# Play sound on allay
playsound minecraft:entity.allay.item_given neutral @a ~ ~ ~ 1 1.2