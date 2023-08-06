# Update spore
data modify entity @s Item.tag.spore set value "allay_bottle"

# Set name data from stored name
data modify entity @s Item.tag.display.Name set from storage allay_bottle name 

# Delete stored name
data remove storage minecraft:allay_bottle name

# Play sound
playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 1 1.2