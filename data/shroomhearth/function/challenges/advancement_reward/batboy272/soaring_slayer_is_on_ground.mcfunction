# Executor: A player who is on the ground with the soaring slayer tag
# Position: the player

tellraw @a[tag=debug_challenges] [{"text":"[shroomhearth:challenges/advancement_reward/batboy272/soaring_slayer_is_on_ground] "},{"selector":"@s"},{"text":" is on the ground with the soaring slayer tag"}]


# Revoke advancement
advancement revoke @s only shroomhearth:challenges/batboy272/soaring_slayer_is_on_ground

# Remove tag
tag @s remove soaring_slayer
