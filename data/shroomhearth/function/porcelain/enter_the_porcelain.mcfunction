# Executor: Player who used a Porcelain while not in The Porcelain and is entering it
# Position: The Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/enter_the_porcelain] "},{"selector":"@s"},{"text":" is entering The Porcelain"}]


# Summon a Porcelain Anchor item display entity in the source dimension to keep track of player's original location and inventory
#execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["source_anchor"],data:{player_inventory:[],player_equipment:[]}}
execute at @s run summon minecraft:item_display ~ ~0.45 ~ {\
Tags:["porcelain_anchor","new_porcelain_anchor"],\
data:{player_inventory:[],player_equipment:[]},\
item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:item_model":"shroomhearth:porcelain"}}}

# Initialize the newly summoned Porcelain Anchor
function shroomhearth:score_uuid
execute as @n[tag=new_porcelain_anchor] at @s run function shroomhearth:porcelain/initialize_porcelain_anchor

# Teleport the Player to The Porcelain
# Use spreadplayers to find a safe position
execute in shroomhearth:the_porcelain run teleport @s ~ 64 ~
execute at @s run spreadplayers ~ ~ 0 1 false @s

# Clear the Player's inventory
clear @s

# Give the Player a new Porcelain
loot replace entity @s weapon.mainhand loot shroomhearth:porcelain

# Play travel effects
execute at @s run function shroomhearth:porcelain/travel_effects