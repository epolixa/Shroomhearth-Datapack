# set temporary shulker box for inventory items
# CHANGE THIS TO -64y FOR OVERWORLD IN 1.18
setblock ~ 0 ~ minecraft:white_shulker_box

# copy inventory items to shulker box
item replace block ~ 0 ~ container.0 from entity @p inventory.0
item replace block ~ 0 ~ container.1 from entity @p inventory.1
item replace block ~ 0 ~ container.2 from entity @p inventory.2
item replace block ~ 0 ~ container.3 from entity @p inventory.3
item replace block ~ 0 ~ container.4 from entity @p inventory.4
item replace block ~ 0 ~ container.5 from entity @p inventory.5
item replace block ~ 0 ~ container.6 from entity @p inventory.6
item replace block ~ 0 ~ container.7 from entity @p inventory.7
item replace block ~ 0 ~ container.8 from entity @p inventory.8
item replace block ~ 0 ~ container.9 from entity @p inventory.9
item replace block ~ 0 ~ container.10 from entity @p inventory.10
item replace block ~ 0 ~ container.11 from entity @p inventory.11
item replace block ~ 0 ~ container.12 from entity @p inventory.12
item replace block ~ 0 ~ container.13 from entity @p inventory.13
item replace block ~ 0 ~ container.14 from entity @p inventory.14
item replace block ~ 0 ~ container.15 from entity @p inventory.15
item replace block ~ 0 ~ container.16 from entity @p inventory.16
item replace block ~ 0 ~ container.17 from entity @p inventory.17
item replace block ~ 0 ~ container.18 from entity @p inventory.18
item replace block ~ 0 ~ container.19 from entity @p inventory.19
item replace block ~ 0 ~ container.20 from entity @p inventory.20
item replace block ~ 0 ~ container.21 from entity @p inventory.21
item replace block ~ 0 ~ container.22 from entity @p inventory.22
item replace block ~ 0 ~ container.23 from entity @p inventory.23
item replace block ~ 0 ~ container.24 from entity @p inventory.24
item replace block ~ 0 ~ container.25 from entity @p inventory.25
item replace block ~ 0 ~ container.26 from entity @p inventory.26

# copy shulker box Items to anchor hand 1
data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items set from block ~ 0 ~ Items

# clear shulker box
data modify block ~ 0 ~ Items set value []

# copy armor, hotbar and offhand to shulker box
item replace block ~ 0 ~ container.0 from entity @p armor.feet
item replace block ~ 0 ~ container.1 from entity @p armor.legs
item replace block ~ 0 ~ container.2 from entity @p armor.chest
item replace block ~ 0 ~ container.3 from entity @p armor.head
item replace block ~ 0 ~ container.9 from entity @p hotbar.0
item replace block ~ 0 ~ container.10 from entity @p hotbar.1
item replace block ~ 0 ~ container.11 from entity @p hotbar.2
item replace block ~ 0 ~ container.12 from entity @p hotbar.3
item replace block ~ 0 ~ container.13 from entity @p hotbar.4
item replace block ~ 0 ~ container.14 from entity @p hotbar.5
item replace block ~ 0 ~ container.15 from entity @p hotbar.6
item replace block ~ 0 ~ container.16 from entity @p hotbar.7
item replace block ~ 0 ~ container.17 from entity @p hotbar.8
item replace block ~ 0 ~ container.18 from entity @p weapon.offhand

# copy shulker box Items to anchor hand 2
data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items set from block ~ 0 ~ Items

# remove temporary shulker box
setblock ~ 0 ~ minecraft:bedrock