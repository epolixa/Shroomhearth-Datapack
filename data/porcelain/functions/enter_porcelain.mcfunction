# assign dim id to player based on dimension they are in
execute if predicate porcelain:in_overworld run scoreboard players set @s porcelainDimID 0
execute if predicate porcelain:in_nether run scoreboard players set @s porcelainDimID -1
execute if predicate porcelain:in_end run scoreboard players set @s porcelainDimID 1

# keep chunk loaded in source dimension
# this is needed so that the player can teleport back to the anchor instantly
forceload add ~ ~

# summon armor stand in source dimension
#summon minecraft:armor_stand ~ ~ ~ {Tags:["source_anchor"], Marker:true, Invisible:true, ArmorItems:[{id:"minecraft:white_shulker_box", count:1},{id:"minecraft:white_shulker_box", count:1},{},{id:"minecraft:warped_fungus_on_a_stick", count:1, components: {"minecraft:custom_model_data": 1, "minecraft:enchantment_glint_override": 1b}}]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["source_anchor"],data:{player_inventory:[],player_equipment:[]}}
execute at @s run summon minecraft:item_display ~ ~ ~ {Tags:["porcelain_display"],item_display:"head",item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true}}}

# assign porcelain ID to source anchor and player
scoreboard players set @s porcelainID 0
scoreboard players operation @s porcelainID = nextPorcelainID shroomhearth
scoreboard players set @e[tag=source_anchor,sort=nearest,limit=1] porcelainID 0
scoreboard players operation @e[tag=source_anchor,sort=nearest,limit=1] porcelainID = @s porcelainID
scoreboard players set @e[tag=porcelain_display,sort=nearest,limit=1] porcelainID 0
scoreboard players operation @e[tag=porcelain_display,sort=nearest,limit=1] porcelainID = @s porcelainID

# copy player inventory to source anchor
execute if predicate porcelain:in_overworld as @e[tag=source_anchor,sort=nearest,limit=1] at @s run function porcelain:copy_inv_p_to_a_overworld
execute unless predicate porcelain:in_overworld as @e[tag=source_anchor,sort=nearest,limit=1] at @s run function porcelain:copy_inv_p_to_a

# copy rotation of player to nearest anchor in overworld
#data modify entity @e[tag=source_anchor,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
#data modify entity @e[tag=source_anchor,sort=nearest,limit=1] Rotation[2] set from entity @s Rotation[2]

# teleport to porcelain
execute in minecraft:the_porcelain run teleport @s ~ 64 ~
execute at @s run spreadplayers ~ ~ 0 1 false @s

# summon marker anchor entity in porcelain
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["porcelain_anchor"], Marker:true, Invisible:true}

# clear player inventory
clear @s

# give player porcelain
loot replace entity @s weapon.mainhand loot porcelain:porcelain

# increment next porcelain ID
scoreboard players add nextPorcelainID shroomhearth 1

# travel effects
function porcelain:travel_effects