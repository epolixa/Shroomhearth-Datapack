# Executor: A newly spawned allay bottle item entity
# Position: the item entity

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/prepare_allay_bottle] Preparing newly spawned allay bottle item entity"}]


# Update shroomhearth_id
data modify entity @s Item.components."minecraft:custom_data".shroomhearth_id set value "allay_bottle"

# Set name data from stored name
data modify entity @s Item.components."minecraft:custom_name" set from storage shroomhearth:allay_bottle name

# Reset stored name so that unnamed Allays don't get named when they shouldn't
data remove storage shroomhearth:allay_bottle name

# Play sound
playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 1 1.25