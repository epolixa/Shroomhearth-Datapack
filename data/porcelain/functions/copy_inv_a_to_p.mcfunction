# set temporary shulker box for inventory items at bedrock level
setblock ~ 0 ~ minecraft:white_shulker_box

# copy anchor hand 1 to shulker box Items
data modify block ~ 0 ~ Items set from entity @s ArmorItems[0].tag.BlockEntityTag.Items

# copy inventory items to shulker box
item entity @p inventory.0 copy block ~ 0 ~ container.0
item entity @p inventory.1 copy block ~ 0 ~ container.1
item entity @p inventory.2 copy block ~ 0 ~ container.2
item entity @p inventory.3 copy block ~ 0 ~ container.3
item entity @p inventory.4 copy block ~ 0 ~ container.4
item entity @p inventory.5 copy block ~ 0 ~ container.5
item entity @p inventory.6 copy block ~ 0 ~ container.6
item entity @p inventory.7 copy block ~ 0 ~ container.7
item entity @p inventory.8 copy block ~ 0 ~ container.8
item entity @p inventory.9 copy block ~ 0 ~ container.9
item entity @p inventory.10 copy block ~ 0 ~ container.10
item entity @p inventory.11 copy block ~ 0 ~ container.11
item entity @p inventory.12 copy block ~ 0 ~ container.12
item entity @p inventory.13 copy block ~ 0 ~ container.13
item entity @p inventory.14 copy block ~ 0 ~ container.14
item entity @p inventory.15 copy block ~ 0 ~ container.15
item entity @p inventory.16 copy block ~ 0 ~ container.16
item entity @p inventory.17 copy block ~ 0 ~ container.17
item entity @p inventory.18 copy block ~ 0 ~ container.18
item entity @p inventory.19 copy block ~ 0 ~ container.19
item entity @p inventory.20 copy block ~ 0 ~ container.20
item entity @p inventory.21 copy block ~ 0 ~ container.21
item entity @p inventory.22 copy block ~ 0 ~ container.22
item entity @p inventory.23 copy block ~ 0 ~ container.23
item entity @p inventory.24 copy block ~ 0 ~ container.24
item entity @p inventory.25 copy block ~ 0 ~ container.25
item entity @p inventory.26 copy block ~ 0 ~ container.26

# clear shulker box
data modify block ~ 0 ~ Items set value []

# copy anchor hand 2 to shulker box Items
data modify block ~ 0 ~ Items set from entity @s ArmorItems[1].tag.BlockEntityTag.Items

# copy armor, hotbar and offhand to player
item entity @p armor.feet copy block ~ 0 ~ container.0
item entity @p armor.legs copy block ~ 0 ~ container.1
item entity @p armor.chest copy block ~ 0 ~ container.2
item entity @p armor.head copy block ~ 0 ~ container.3
item entity @p hotbar.0 copy block ~ 0 ~ container.9 
item entity @p hotbar.1 copy block ~ 0 ~ container.10 
item entity @p hotbar.2 copy block ~ 0 ~ container.11 
item entity @p hotbar.3 copy block ~ 0 ~ container.12 
item entity @p hotbar.4 copy block ~ 0 ~ container.13 
item entity @p hotbar.5 copy block ~ 0 ~ container.14 
item entity @p hotbar.6 copy block ~ 0 ~ container.15 
item entity @p hotbar.7 copy block ~ 0 ~ container.16 
item entity @p hotbar.8 copy block ~ 0 ~ container.17
item entity @p weapon.offhand copy block ~ 0 ~ container.18

# remove temporary shulker box and replace bedrock
setblock ~ 0 ~ minecraft:bedrock