# Executor: Server
# Position: Root

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:function/cancel_elytra_1t] Removing levitation from players with cancel_elytra tag"}]

# Clear levitation from players with cancel_elytra tag
effect clear @a[tag=cancel_elytra] minecraft:levitation

# Remove tag from players
tag @a[tag=cancel_elytra] remove cancel_elytra