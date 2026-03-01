# Executor: A Porcelain Anchor that is copying its parent Player's inventory
# Position: The Anchor

# Uses a temporary Shulker Box at bedrock level to serve as intermediary between the Player's inventory and the Anchor's data

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/copy_inventory/player_to_anchor] Copying inventory from "},{"selector":"@p[tag=used_porcelain]"},{"text":" to Porcelain Anchor"}]


# Set the temporary Shulker Box at bedrock level
setblock ~ 0 ~ minecraft:white_shulker_box

# Copy the Player's inventory to the Shulker Box's items
item replace block ~ 0 ~ container.0 from entity @p[tag=used_porcelain] inventory.0
item replace block ~ 0 ~ container.1 from entity @p[tag=used_porcelain] inventory.1
item replace block ~ 0 ~ container.2 from entity @p[tag=used_porcelain] inventory.2
item replace block ~ 0 ~ container.3 from entity @p[tag=used_porcelain] inventory.3
item replace block ~ 0 ~ container.4 from entity @p[tag=used_porcelain] inventory.4
item replace block ~ 0 ~ container.5 from entity @p[tag=used_porcelain] inventory.5
item replace block ~ 0 ~ container.6 from entity @p[tag=used_porcelain] inventory.6
item replace block ~ 0 ~ container.7 from entity @p[tag=used_porcelain] inventory.7
item replace block ~ 0 ~ container.8 from entity @p[tag=used_porcelain] inventory.8
item replace block ~ 0 ~ container.9 from entity @p[tag=used_porcelain] inventory.9
item replace block ~ 0 ~ container.10 from entity @p[tag=used_porcelain] inventory.10
item replace block ~ 0 ~ container.11 from entity @p[tag=used_porcelain] inventory.11
item replace block ~ 0 ~ container.12 from entity @p[tag=used_porcelain] inventory.12
item replace block ~ 0 ~ container.13 from entity @p[tag=used_porcelain] inventory.13
item replace block ~ 0 ~ container.14 from entity @p[tag=used_porcelain] inventory.14
item replace block ~ 0 ~ container.15 from entity @p[tag=used_porcelain] inventory.15
item replace block ~ 0 ~ container.16 from entity @p[tag=used_porcelain] inventory.16
item replace block ~ 0 ~ container.17 from entity @p[tag=used_porcelain] inventory.17
item replace block ~ 0 ~ container.18 from entity @p[tag=used_porcelain] inventory.18
item replace block ~ 0 ~ container.19 from entity @p[tag=used_porcelain] inventory.19
item replace block ~ 0 ~ container.20 from entity @p[tag=used_porcelain] inventory.20
item replace block ~ 0 ~ container.21 from entity @p[tag=used_porcelain] inventory.21
item replace block ~ 0 ~ container.22 from entity @p[tag=used_porcelain] inventory.22
item replace block ~ 0 ~ container.23 from entity @p[tag=used_porcelain] inventory.23
item replace block ~ 0 ~ container.24 from entity @p[tag=used_porcelain] inventory.24
item replace block ~ 0 ~ container.25 from entity @p[tag=used_porcelain] inventory.25
item replace block ~ 0 ~ container.26 from entity @p[tag=used_porcelain] inventory.26

# Overwrite the Anchor's inventory data with the Shulker Box's items
data modify entity @s data.player_inventory set from block ~ 0 ~ Items


# Clear the Shulker Box's items
data modify block ~ 0 ~ Items set value []

# Copy the Player's armor, hotbar and offhand to the Shulker Box's items
item replace block ~ 0 ~ container.0 from entity @p[tag=used_porcelain] armor.feet
item replace block ~ 0 ~ container.1 from entity @p[tag=used_porcelain] armor.legs
item replace block ~ 0 ~ container.2 from entity @p[tag=used_porcelain] armor.chest
item replace block ~ 0 ~ container.3 from entity @p[tag=used_porcelain] armor.head
item replace block ~ 0 ~ container.9 from entity @p[tag=used_porcelain] hotbar.0
item replace block ~ 0 ~ container.10 from entity @p[tag=used_porcelain] hotbar.1
item replace block ~ 0 ~ container.11 from entity @p[tag=used_porcelain] hotbar.2
item replace block ~ 0 ~ container.12 from entity @p[tag=used_porcelain] hotbar.3
item replace block ~ 0 ~ container.13 from entity @p[tag=used_porcelain] hotbar.4
item replace block ~ 0 ~ container.14 from entity @p[tag=used_porcelain] hotbar.5
item replace block ~ 0 ~ container.15 from entity @p[tag=used_porcelain] hotbar.6
item replace block ~ 0 ~ container.16 from entity @p[tag=used_porcelain] hotbar.7
item replace block ~ 0 ~ container.17 from entity @p[tag=used_porcelain] hotbar.8
item replace block ~ 0 ~ container.18 from entity @p[tag=used_porcelain] weapon.offhand

# Overwrite the Anchor's equipment data with the Shulker Box's items
data modify entity @s data.player_equipment set from block ~ 0 ~ Items


# Remove the temporary Shulker Box
execute unless dimension minecraft:the_end run setblock ~ 0 ~ minecraft:bedrock
execute if dimension minecraft:the_end run setblock ~ 0 ~ minecraft:air