# Executor: A newly spawned allay
# Position: the allay

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/prepare_allay] Preparing newly spawned allay"}]


# Set liked player to player who summoned it
data modify entity @s Brain.memories."minecraft:liked_player".value set from entity @p[tag=used_allay_bottle] UUID

# If there is an item entity at the same position as the allay, make the allay hold it
execute as @n[type=minecraft:item,distance=..1.3] run function shroomhearth:allay_bottle/give_allay_nearby_item

# Fix default name
data merge entity @s[nbt={CustomName:{"italic":false,"translate":"allay_bottle.allay_bottle"}}] {CustomName:""}

# Give a bottle back to the player
give @p[tag=used_allay_bottle] minecraft:glass_bottle

# Untag the allay so it does not get checked again
tag @s remove unbottled_allay

# Play sound on allay
playsound minecraft:entity.allay.item_given neutral @a ~ ~ ~ 1 1.2