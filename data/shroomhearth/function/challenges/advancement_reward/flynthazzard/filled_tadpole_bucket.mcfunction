# Executor: A player who filled a bucket with a Tadpole
# Position: the player

tellraw @a[tag=debug_challenges] [{"text":"[shroomhearth:challenges/advancement_reward/flynthazzard/filled_tadpole_bucket] "},{"selector":"@s"},{"text":" filled a bucket with a Tadpole"}] 


# Increment score
scoreboard players add @s five_hundred_liters_of_frogs 1

# Revoke trigger advancement
advancement revoke @s only shroomhearth:challenges/flynthazzard/filled_tadpole_bucket