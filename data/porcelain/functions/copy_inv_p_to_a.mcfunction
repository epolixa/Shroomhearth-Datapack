# set temporary shulker box for inventory items
setblock ~ ~ ~ minecraft:white_shulker_box

# copy inventory items to shulker box
item block ~ ~ ~ container.0 copy entity @p inventory.0
item block ~ ~ ~ container.1 copy entity @p inventory.1
item block ~ ~ ~ container.2 copy entity @p inventory.2
item block ~ ~ ~ container.3 copy entity @p inventory.3
item block ~ ~ ~ container.4 copy entity @p inventory.4
item block ~ ~ ~ container.5 copy entity @p inventory.5
item block ~ ~ ~ container.6 copy entity @p inventory.6
item block ~ ~ ~ container.7 copy entity @p inventory.7
item block ~ ~ ~ container.8 copy entity @p inventory.8
item block ~ ~ ~ container.9 copy entity @p inventory.9
item block ~ ~ ~ container.10 copy entity @p inventory.10
item block ~ ~ ~ container.11 copy entity @p inventory.11
item block ~ ~ ~ container.12 copy entity @p inventory.12
item block ~ ~ ~ container.13 copy entity @p inventory.13
item block ~ ~ ~ container.14 copy entity @p inventory.14
item block ~ ~ ~ container.15 copy entity @p inventory.15
item block ~ ~ ~ container.16 copy entity @p inventory.16
item block ~ ~ ~ container.17 copy entity @p inventory.17
item block ~ ~ ~ container.18 copy entity @p inventory.18
item block ~ ~ ~ container.19 copy entity @p inventory.19
item block ~ ~ ~ container.20 copy entity @p inventory.20
item block ~ ~ ~ container.21 copy entity @p inventory.21
item block ~ ~ ~ container.22 copy entity @p inventory.22
item block ~ ~ ~ container.23 copy entity @p inventory.23
item block ~ ~ ~ container.24 copy entity @p inventory.24
item block ~ ~ ~ container.25 copy entity @p inventory.25
item block ~ ~ ~ container.26 copy entity @p inventory.26

# copy shulker box Items to anchor hand 1
data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items set from block ~ ~ ~ Items

# clear shulker box
data modify block ~ ~ ~ Items set value []

# copy armor, hotbar and offhand to shulker box
item block ~ ~ ~ container.0 copy entity @p armor.feet
item block ~ ~ ~ container.1 copy entity @p armor.legs
item block ~ ~ ~ container.2 copy entity @p armor.chest
item block ~ ~ ~ container.3 copy entity @p armor.head
item block ~ ~ ~ container.9 copy entity @p hotbar.0
item block ~ ~ ~ container.10 copy entity @p hotbar.1
item block ~ ~ ~ container.11 copy entity @p hotbar.2
item block ~ ~ ~ container.12 copy entity @p hotbar.3
item block ~ ~ ~ container.13 copy entity @p hotbar.4
item block ~ ~ ~ container.14 copy entity @p hotbar.5
item block ~ ~ ~ container.15 copy entity @p hotbar.6
item block ~ ~ ~ container.16 copy entity @p hotbar.7
item block ~ ~ ~ container.17 copy entity @p hotbar.8
item block ~ ~ ~ container.18 copy entity @p weapon.offhand

# copy shulker box Items to anchor hand 2
data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items set from block ~ ~ ~ Items

# remove temporary shulker box
setblock ~ ~ ~ minecraft:air