# Executor: Player entering The Porcelain
# Position: the Player


# assign dim id to player based on dimension they are in
execute if predicate shroomhearth:in_overworld run scoreboard players set @s porcelain_dimension_id 0
execute if predicate shroomhearth:in_nether run scoreboard players set @s porcelain_dimension_id -1
execute if predicate shroomhearth:in_end run scoreboard players set @s porcelain_dimension_id 1

# keep chunk loaded in source dimension
# this is needed so that the player can teleport back to the anchor instantly
forceload add ~ ~

# summon marker in source dimension
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["source_anchor"],data:{player_inventory:[],player_equipment:[]}}
execute at @s run summon minecraft:item_display ~ ~0.45 ~ {Tags:["porcelain_display"],item_display:"none",item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:item_model":"shroomhearth:porcelain","minecraft:enchantment_glint_override":true}}}

# assign porcelain ID to source anchor and player
scoreboard players set @s porcelain_id 0
scoreboard players operation @s porcelain_id = next_porcelain_id shroomhearth.porcelain
scoreboard players set @e[tag=source_anchor,sort=nearest,limit=1] porcelain_id 0
scoreboard players operation @e[tag=source_anchor,sort=nearest,limit=1] porcelain_id = @s porcelain_id
scoreboard players set @e[tag=porcelain_display,sort=nearest,limit=1] porcelain_id 0
scoreboard players operation @e[tag=porcelain_display,sort=nearest,limit=1] porcelain_id = @s porcelain_id

# copy player inventory to source anchor
execute if predicate shroomhearth:in_overworld as @e[tag=source_anchor,sort=nearest,limit=1] at @s run function shroomhearth:porcelain/copy_inv_p_to_a_overworld
execute unless predicate shroomhearth:in_overworld as @e[tag=source_anchor,sort=nearest,limit=1] at @s run function shroomhearth:porcelain/copy_inv_p_to_a

# copy rotation of player to nearest anchor in overworld
#data modify entity @e[tag=source_anchor,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
#data modify entity @e[tag=source_anchor,sort=nearest,limit=1] Rotation[2] set from entity @s Rotation[2]

# teleport to porcelain
execute in shroomhearth:the_porcelain run teleport @s ~ 64 ~
execute at @s run spreadplayers ~ ~ 0 1 false @s

# summon marker anchor entity in porcelain
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["porcelain_anchor"], Marker:true, Invisible:true}

# clear player inventory
clear @s

# give player porcelain
loot replace entity @s weapon.mainhand loot shroomhearth:porcelain

# increment next porcelain ID
scoreboard players add next_porcelain_id shroomhearth.porcelain 1

# travel effects
execute at @s run function shroomhearth:porcelain/travel_effects