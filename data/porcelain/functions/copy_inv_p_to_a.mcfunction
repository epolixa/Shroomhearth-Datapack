# set temporary shulker box for inventory items
# CHANGE THIS TO -64y FOR OVERWORLD IN 1.17
setblock ~ 0 ~ minecraft:white_shulker_box

# copy inventory items to shulker box
item block ~ 0 ~ container.0 copy entity @p inventory.0
item block ~ 0 ~ container.1 copy entity @p inventory.1
item block ~ 0 ~ container.2 copy entity @p inventory.2
item block ~ 0 ~ container.3 copy entity @p inventory.3
item block ~ 0 ~ container.4 copy entity @p inventory.4
item block ~ 0 ~ container.5 copy entity @p inventory.5
item block ~ 0 ~ container.6 copy entity @p inventory.6
item block ~ 0 ~ container.7 copy entity @p inventory.7
item block ~ 0 ~ container.8 copy entity @p inventory.8
item block ~ 0 ~ container.9 copy entity @p inventory.9
item block ~ 0 ~ container.10 copy entity @p inventory.10
item block ~ 0 ~ container.11 copy entity @p inventory.11
item block ~ 0 ~ container.12 copy entity @p inventory.12
item block ~ 0 ~ container.13 copy entity @p inventory.13
item block ~ 0 ~ container.14 copy entity @p inventory.14
item block ~ 0 ~ container.15 copy entity @p inventory.15
item block ~ 0 ~ container.16 copy entity @p inventory.16
item block ~ 0 ~ container.17 copy entity @p inventory.17
item block ~ 0 ~ container.18 copy entity @p inventory.18
item block ~ 0 ~ container.19 copy entity @p inventory.19
item block ~ 0 ~ container.20 copy entity @p inventory.20
item block ~ 0 ~ container.21 copy entity @p inventory.21
item block ~ 0 ~ container.22 copy entity @p inventory.22
item block ~ 0 ~ container.23 copy entity @p inventory.23
item block ~ 0 ~ container.24 copy entity @p inventory.24
item block ~ 0 ~ container.25 copy entity @p inventory.25
item block ~ 0 ~ container.26 copy entity @p inventory.26

# copy shulker box Items to anchor hand 1
data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items set from block ~ 0 ~ Items

# clear shulker box
data modify block ~ 0 ~ Items set value []

# copy armor, hotbar and offhand to shulker box
item block ~ 0 ~ container.0 copy entity @p armor.feet
item block ~ 0 ~ container.1 copy entity @p armor.legs
item block ~ 0 ~ container.2 copy entity @p armor.chest
item block ~ 0 ~ container.3 copy entity @p armor.head
item block ~ 0 ~ container.9 copy entity @p hotbar.0
item block ~ 0 ~ container.10 copy entity @p hotbar.1
item block ~ 0 ~ container.11 copy entity @p hotbar.2
item block ~ 0 ~ container.12 copy entity @p hotbar.3
item block ~ 0 ~ container.13 copy entity @p hotbar.4
item block ~ 0 ~ container.14 copy entity @p hotbar.5
item block ~ 0 ~ container.15 copy entity @p hotbar.6
item block ~ 0 ~ container.16 copy entity @p hotbar.7
item block ~ 0 ~ container.17 copy entity @p hotbar.8
item block ~ 0 ~ container.18 copy entity @p weapon.offhand

# copy shulker box Items to anchor hand 2
data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items set from block ~ 0 ~ Items

# remove temporary shulker box
setblock ~ 0 ~ minecraft:bedrock