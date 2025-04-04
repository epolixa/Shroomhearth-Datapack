# set temporary shulker box for inventory items at bedrock level
setblock ~ 0 ~ minecraft:white_shulker_box

# copy anchor hand 1 to shulker box Items
#data modify block ~ 0 ~ Items set from entity @s ArmorItems[0].components."minecraft:container"
data modify block ~ 0 ~ Items set from entity @s data.player_inventory

# copy inventory items to shulker box
item replace entity @p inventory.0 from block ~ 0 ~ container.0
item replace entity @p inventory.1 from block ~ 0 ~ container.1
item replace entity @p inventory.2 from block ~ 0 ~ container.2
item replace entity @p inventory.3 from block ~ 0 ~ container.3
item replace entity @p inventory.4 from block ~ 0 ~ container.4
item replace entity @p inventory.5 from block ~ 0 ~ container.5
item replace entity @p inventory.6 from block ~ 0 ~ container.6
item replace entity @p inventory.7 from block ~ 0 ~ container.7
item replace entity @p inventory.8 from block ~ 0 ~ container.8
item replace entity @p inventory.9 from block ~ 0 ~ container.9
item replace entity @p inventory.10 from block ~ 0 ~ container.10
item replace entity @p inventory.11 from block ~ 0 ~ container.11
item replace entity @p inventory.12 from block ~ 0 ~ container.12
item replace entity @p inventory.13 from block ~ 0 ~ container.13
item replace entity @p inventory.14 from block ~ 0 ~ container.14
item replace entity @p inventory.15 from block ~ 0 ~ container.15
item replace entity @p inventory.16 from block ~ 0 ~ container.16
item replace entity @p inventory.17 from block ~ 0 ~ container.17
item replace entity @p inventory.18 from block ~ 0 ~ container.18
item replace entity @p inventory.19 from block ~ 0 ~ container.19
item replace entity @p inventory.20 from block ~ 0 ~ container.20
item replace entity @p inventory.21 from block ~ 0 ~ container.21
item replace entity @p inventory.22 from block ~ 0 ~ container.22
item replace entity @p inventory.23 from block ~ 0 ~ container.23
item replace entity @p inventory.24 from block ~ 0 ~ container.24
item replace entity @p inventory.25 from block ~ 0 ~ container.25
item replace entity @p inventory.26 from block ~ 0 ~ container.26

# clear shulker box
data modify block ~ 0 ~ Items set value []

# copy anchor hand 2 to shulker box Items
#data modify block ~ 0 ~ Items set from entity @s ArmorItems[1].components."minecraft:container"
data modify block ~ 0 ~ Items set from entity @s data.player_equipment

# copy armor, hotbar and offhand to player
item replace entity @p armor.feet from block ~ 0 ~ container.0
item replace entity @p armor.legs from block ~ 0 ~ container.1
item replace entity @p armor.chest from block ~ 0 ~ container.2
item replace entity @p armor.head from block ~ 0 ~ container.3
item replace entity @p hotbar.0 from block ~ 0 ~ container.9
item replace entity @p hotbar.1 from block ~ 0 ~ container.10
item replace entity @p hotbar.2 from block ~ 0 ~ container.11
item replace entity @p hotbar.3 from block ~ 0 ~ container.12
item replace entity @p hotbar.4 from block ~ 0 ~ container.13
item replace entity @p hotbar.5 from block ~ 0 ~ container.14
item replace entity @p hotbar.6 from block ~ 0 ~ container.15
item replace entity @p hotbar.7 from block ~ 0 ~ container.16
item replace entity @p hotbar.8 from block ~ 0 ~ container.17
item replace entity @p weapon.offhand from block ~ 0 ~ container.18

# remove temporary shulker box and replace bedrock
execute unless dimension minecraft:the_end run setblock ~ 0 ~ minecraft:bedrock
execute if dimension minecraft:the_end run setblock ~ 0 ~ minecraft:air