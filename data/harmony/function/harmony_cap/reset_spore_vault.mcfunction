# Executor: A player that just used a Harmony Cap on a Vault
# Location: The Spore Vault marker

tellraw @a[tag=debug_harmony] [{"text":"[harmony:harmony_cap/reset_spore_vault] Resetting Spore Vault for "},{"selector":"@s"}]

# Reset rewarded players list
execute if block ~ ~ ~ minecraft:vault run data modify block ~ ~ ~ server_data.rewarded_players set value []

# Particles
particle minecraft:end_rod ~ ~0.5 ~ 0.5 0 0.5 0.05 16