# Executor: A player who hooked a Warden with a Fishing Rod
# Position: The player

tellraw @a[tag=debug_warden] [{"text":"[shroomhearth:warden/advancement_reward/fishing_rod_hooked_warden] "},{"selector":"@s"},{"text":" hooked a Warden with a Fishing Rod"}]


# Shed an Echo Shard from the nearest Warden
execute as @n[type=minecraft:warden] at @s run function shroomhearth:warden/shed_echo_shard

# Revoke the advancement to allow it to be earned again
advancement revoke @s only shroomhearth:warden/fishing_rod_hooked_warden