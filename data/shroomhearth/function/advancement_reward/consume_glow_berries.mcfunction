# Executor: Player who ate glow berries
# Position: The player

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:advancement_reward/consume_glow_berries] "},{"selector":"@s"},{"text":" ate glow berries"}] 


# Give glowing effect for 10 seconds, consistent with getting hit by a spectral arrow
effect give @s glowing 10

# Revoke trigger
advancement revoke @s only shroomhearth:consume_glow_berries