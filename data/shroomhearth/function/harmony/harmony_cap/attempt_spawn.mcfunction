# Executor: A player with 60 or more harmony score
# Position: Spawn

tellraw @a[tag=debug_harmony] [{"text":"shroomhearth:harmony/harmony_cap/attempt_spawn] trying to spawn Harmony Cap from "},{"selector":"@s"}]

# Roll predicate
execute if predicate shroomhearth:harmony/harmony_cap_spawn_chance run tag @s add spawning_harmony_cap

# Spawn harmony cap if predicate success
execute as @s[tag=spawning_harmony_cap] unless dimension shroomhearth:the_porcelain run function shroomhearth:harmony/harmony_cap/spawn

# If in The Porcelain, spawn harmony cap from the position of the player's amphora
execute as @s[tag=spawning_harmony_cap] if dimension shroomhearth:the_porcelain \
as @e[tag=porcelain_amphora] \
if score @p[tag=spawning_harmony_cap] uuid_1 = @s porcelain_amphora_uuid_1 \
if score @p[tag=spawning_harmony_cap] uuid_2 = @s porcelain_amphora_uuid_2 \
if score @p[tag=spawning_harmony_cap] uuid_3 = @s porcelain_amphora_uuid_3 \
if score @p[tag=spawning_harmony_cap] uuid_4 = @s porcelain_amphora_uuid_4 \
at @s run function shroomhearth:harmony/harmony_cap/spawn

# Reset harmony
scoreboard players set @s harmony 0