# assign dim id to player based on dimension they are in
execute if predicate porcelain:in_overworld run scoreboard players set @s porcelainDimID 0
execute if predicate porcelain:in_nether run scoreboard players set @s porcelainDimID -1
execute if predicate porcelain:in_end run scoreboard players set @s porcelainDimID 1

# keep chunk loaded in source dimension
# this is needed so that the player can teleport back to the anchor instantly
forceload add ~ ~

# summon armor stand in source dimension
summon minecraft:armor_stand ~ ~ ~ {Tags:["source_anchor"], Marker:true, Invisible:true, ArmorItems:[{id:"minecraft:white_shulker_box", Count:1b, tag:{BlockEntityTag:{Items:[]}}},{id:"minecraft:white_shulker_box", Count:1b, tag:{BlockEntityTag:{Items:[]}}},{},{id:"minecraft:warped_fungus_on_a_stick", Count:1b, tag: {CustomModelData: 1, Enchantments:[{id:"minecraft:infinity",lvl:1}]}}]}

# assign porcelain ID to source anchor and player
scoreboard players set @s porcelainID 0
scoreboard players operation @s porcelainID = nextPorcelainID shroomhearth
scoreboard players set @e[tag=source_anchor,sort=nearest,limit=1] porcelainID 0
scoreboard players operation @e[tag=source_anchor,sort=nearest,limit=1] porcelainID = @s porcelainID

# copy player inventory to source anchor
execute if predicate porcelain:in_overworld as @e[tag=source_anchor,sort=nearest,limit=1] at @s run function porcelain:copy_inv_p_to_a_overworld
execute unless predicate porcelain:in_overworld as @e[tag=source_anchor,sort=nearest,limit=1] at @s run function porcelain:copy_inv_p_to_a

# copy rotation of player to nearest anchor in overworld
data modify entity @e[tag=source_anchor,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=source_anchor,sort=nearest,limit=1] Rotation[2] set from entity @s Rotation[2]

# teleport to porcelain
execute in minecraft:the_porcelain run teleport @s ~ 64 ~
execute at @s run spreadplayers ~ ~ 0 1 false @s

# set gamemode to creative
#gamemode creative @s

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