###########################################
# Item Permanence
# Stops named equipment from despawning by resetting its Age property 
# executes on a global interval with /schedule
###########################################

# Add entity tags to relavent entities
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_axe"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_hoe"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:fishing_rod"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_helmet"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_chestplate"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_leggings"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_boots"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:turtle_helmet"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:shield"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow"}}] add equipment

tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book"}}] add equipment

tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:orange_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:magenta_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:lime_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:pink_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:gray_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_gray_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:cyan_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:purple_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:brown_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:green_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_shulker_box"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_shulker_box"}}] add equipment

tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_shovel"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_axe"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_hoe"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_helmet"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_chestplate"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_leggings"}}] add equipment
tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_boots"}}] add equipment

tag @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}}] add equipment


# Reset Age property on tagged entities
execute as @e[type=minecraft:item,tag=equipment] if data entity @s Item.tag.display.Name run function item_permanence:reset_item

# re-schedule
schedule function item_permanence:main 6s