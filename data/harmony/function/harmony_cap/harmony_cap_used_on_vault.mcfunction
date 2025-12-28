# Executor: A player that just used a Harmony Cap on a Vault
# Location: The player

tellraw @a[tag=debug_harmony] [{"text":"[harmony:harmony_cap/harmony_cap_used_on_vault] Harmony Cap used on Vault by "},{"selector":"@s"}]


# Trigger vault reset marker
execute at @n[tag=spore_vault_marker] run function harmony:harmony_cap/reset_spore_vault

# Revoke advancement
advancement revoke @s only harmony:harmony_cap_used_on_vault