# Executor: Player who had the insomnia warning and is now resetting it
# Position: the Player

tellraw @a[tag=debug_status_visibility] [{"text":"[shroomhearth:status_visibility/advancement_reward/insomnia_warning_reset] "},{"selector":"@s"},{"text":" has reset the insomnia warning"}]


# Revoke triggers
advancement revoke @s only shroomhearth:status_visibility/insomnia_warning
advancement revoke @s only shroomhearth:status_visibility/insomnia_warning_reset