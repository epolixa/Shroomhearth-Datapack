tellraw @a[tag=debug_bottle_of_allay] [{"text":"[bottle_of_allay.summon_unbottled_allay] "},{"selector":"@s"},{"text":" was unbottled by "},{"selector":"@p[tag=used_bottle_of_allay]"}]

tag @s add unbottled_allay

# Set liked player to player who summoned it
data modify entity @s Brain.memories."minecraft:liked_player".value set from entity @p[tag=used_bottle_of_allay] UUID

# Set allay holding item in player offhand
execute as @p[tag=used_bottle_of_allay,predicate=bottle_of_allay:can_give_offhand_item_to_allay] run function bottle_of_allay:give_offhand_item_to_allay

# If the allay is not holding anything yet and there is an item entity nearby, make the allay hold it
execute as @n[type=minecraft:item,distance=..1.3] unless predicate bottle_of_allay:allay_holding_item run function bottle_of_allay:give_allay_nearby_item

# Fix default name
#data merge entity @s[nbt={CustomName:{"italic":false,"translate":"allay_bottle.allay_bottle"}}] {CustomName:""}

# Give a bottle back to the player
#give @p[tag=used_allay_bottle] minecraft:glass_bottle

# Untag the allay so it does not get checked again
tag @s remove unbottled_allay

# Play sound on allay
#playsound minecraft:entity.allay.item_given neutral @a ~ ~ ~ 1 1.2