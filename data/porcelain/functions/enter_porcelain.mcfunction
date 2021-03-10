# keep chunk loaded in overworld
# this is needed so that the player can teleport back to the anchor instantly
forceload add ~ ~

# summon armor stand in overworld
summon minecraft:armor_stand ~ ~ ~ {CustomName: '{"text":"Overworld Anchor"}', Tags: ["overworld_anchor"], Marker: true, Invisible: true, ArmorItems:[{id:"minecraft:white_shulker_box", Count:1b, tag:{BlockEntityTag:{Items:[]}}},{id:"minecraft:white_shulker_box", Count:1b, tag:{BlockEntityTag:{Items:[]}}},{},{id:"minecraft:warped_fungus_on_a_stick", Count:1b, tag: {CustomModelData: 1, Enchantments:[{id:"minecraft:infinity",lvl:1}]}}]}

# assign porcelain ID to overworld anchor and player
scoreboard players set @s porcelainID 0
scoreboard players operation @s porcelainID = bityard nextPorcelainID
scoreboard players set @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] porcelainID 0
scoreboard players operation @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] porcelainID = @s porcelainID

# copy player inventory to overworld anchor
execute as @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] at @s run function porcelain:copy_inv_p_to_a

# copy rotation of player to nearest anchor in overworld
data modify entity @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] Rotation[2] set from entity @s Rotation[2]

# teleport to porcelain
execute in porcelain:the_porcelain run teleport @s ~ 64 ~
execute at @s run spreadplayers ~ ~ 0 1 false @s

# set gamemode to creative
gamemode creative @s

# revoke exit trigger, let them leave
advancement revoke @s only porcelain:exit_porcelain

# summon armor stand in porcelain
execute at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName: '{"text":"Porcelain Anchor"}', Tags: ["porcelain_anchor"], Marker: true, Invisible: true}

# initialize porcelain anchor
#execute at @s as @e[tag=porcelain_anchor,limit=1,sort=nearest] at @s run function porcelain:initialize_porcelain_anchor

# increment next porcelain ID
scoreboard players add bityard nextPorcelainID 1

# travel effects
function porcelain:travel_effects