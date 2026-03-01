# Executor: A Porcelain Anchor that is copying its inventory back to its parent Player in the Overworld
# Position: The Anchor

# Uses a temporary Shulker Box at bedrock level to serve as intermediary between the Player's inventory and the Anchor's data

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/copy_inventory/anchor_to_player_overworld] Copying inventory from Porcelain Anchor to "},{"selector":"@p[tag=used_porcelain]"},{"text":" in the Overworld"}]


# Set the temporary Shulker Box at bedrock level
setblock ~ -64 ~ minecraft:white_shulker_box

# Overwrite the Shulker Box's items with the Anchor's inventory data
data modify block ~ -64 ~ Items set from entity @s data.player_inventory

# Copy the Shulker Box's items to the Player's inventory
item replace entity @p[tag=used_porcelain] inventory.0 from block ~ -64 ~ container.0
item replace entity @p[tag=used_porcelain] inventory.1 from block ~ -64 ~ container.1
item replace entity @p[tag=used_porcelain] inventory.2 from block ~ -64 ~ container.2
item replace entity @p[tag=used_porcelain] inventory.3 from block ~ -64 ~ container.3
item replace entity @p[tag=used_porcelain] inventory.4 from block ~ -64 ~ container.4
item replace entity @p[tag=used_porcelain] inventory.5 from block ~ -64 ~ container.5
item replace entity @p[tag=used_porcelain] inventory.6 from block ~ -64 ~ container.6
item replace entity @p[tag=used_porcelain] inventory.7 from block ~ -64 ~ container.7
item replace entity @p[tag=used_porcelain] inventory.8 from block ~ -64 ~ container.8
item replace entity @p[tag=used_porcelain] inventory.9 from block ~ -64 ~ container.9
item replace entity @p[tag=used_porcelain] inventory.10 from block ~ -64 ~ container.10
item replace entity @p[tag=used_porcelain] inventory.11 from block ~ -64 ~ container.11
item replace entity @p[tag=used_porcelain] inventory.12 from block ~ -64 ~ container.12
item replace entity @p[tag=used_porcelain] inventory.13 from block ~ -64 ~ container.13
item replace entity @p[tag=used_porcelain] inventory.14 from block ~ -64 ~ container.14
item replace entity @p[tag=used_porcelain] inventory.15 from block ~ -64 ~ container.15
item replace entity @p[tag=used_porcelain] inventory.16 from block ~ -64 ~ container.16
item replace entity @p[tag=used_porcelain] inventory.17 from block ~ -64 ~ container.17
item replace entity @p[tag=used_porcelain] inventory.18 from block ~ -64 ~ container.18
item replace entity @p[tag=used_porcelain] inventory.19 from block ~ -64 ~ container.19
item replace entity @p[tag=used_porcelain] inventory.20 from block ~ -64 ~ container.20
item replace entity @p[tag=used_porcelain] inventory.21 from block ~ -64 ~ container.21
item replace entity @p[tag=used_porcelain] inventory.22 from block ~ -64 ~ container.22
item replace entity @p[tag=used_porcelain] inventory.23 from block ~ -64 ~ container.23
item replace entity @p[tag=used_porcelain] inventory.24 from block ~ -64 ~ container.24
item replace entity @p[tag=used_porcelain] inventory.25 from block ~ -64 ~ container.25
item replace entity @p[tag=used_porcelain] inventory.26 from block ~ -64 ~ container.26


# Clear the Shulker Box's items
data modify block ~ -64 ~ Items set value []

# Overwrite the Shulker Box's items with the Anchor's equipment data
data modify block ~ -64 ~ Items set from entity @s data.player_equipment

# Copy the Shulker Box's items to the Player's armor, hotbar and offhand
item replace entity @p[tag=used_porcelain] armor.feet from block ~ -64 ~ container.0
item replace entity @p[tag=used_porcelain] armor.legs from block ~ -64 ~ container.1
item replace entity @p[tag=used_porcelain] armor.chest from block ~ -64 ~ container.2
item replace entity @p[tag=used_porcelain] armor.head from block ~ -64 ~ container.3
item replace entity @p[tag=used_porcelain] hotbar.0 from block ~ -64 ~ container.9
item replace entity @p[tag=used_porcelain] hotbar.1 from block ~ -64 ~ container.10
item replace entity @p[tag=used_porcelain] hotbar.2 from block ~ -64 ~ container.11
item replace entity @p[tag=used_porcelain] hotbar.3 from block ~ -64 ~ container.12
item replace entity @p[tag=used_porcelain] hotbar.4 from block ~ -64 ~ container.13
item replace entity @p[tag=used_porcelain] hotbar.5 from block ~ -64 ~ container.14
item replace entity @p[tag=used_porcelain] hotbar.6 from block ~ -64 ~ container.15
item replace entity @p[tag=used_porcelain] hotbar.7 from block ~ -64 ~ container.16
item replace entity @p[tag=used_porcelain] hotbar.8 from block ~ -64 ~ container.17
item replace entity @p[tag=used_porcelain] weapon.offhand from block ~ -64 ~ container.18


# Remove the temporary Shulker Box
setblock ~ -64 ~ minecraft:bedrock