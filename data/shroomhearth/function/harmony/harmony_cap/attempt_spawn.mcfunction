# Executor: A player with 60 or more harmony score
# Position: Spawn

tellraw @a[tag=debug_harmony] [{"text":"shroomhearth:harmony/harmony_cap/attempt_spawn] trying to spawn Harmony Cap from "},{"selector":"@s"}]

# Roll predicate
execute if predicate shroomhearth:harmony/harmony_cap_spawn_chance at @s run function shroomhearth:harmony/harmony_cap/spawn

# Reset harmony
scoreboard players set @s harmony 0