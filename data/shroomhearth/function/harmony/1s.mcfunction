# Executor: Server
# Position: Spawn

#tellraw @a[tag=debug_harmony] "[shroomhearth:harmony/1s] running..."

# Reset player_group for every player so that it may be re-calculated.
scoreboard players set @e[type=#shroomhearth:players_and_mannequins] player_group 0

# Set player_group for every player to the number of other players within range.
# Max range is 160 blocks, or 10 chunks, the default Minecraft server render distance.
# AFK players do not count towards player_group
execute as @e[predicate=shroomhearth:player_group_eligible] at @s \
run scoreboard players add @e[predicate=shroomhearth:player_group_eligible,distance=0.0625..160] player_group 1

# Grant Community Cooperator advancement to any player who is near 5 or more other players.
#advancement grant @a[scores={player_group=5..}] only community:community_cooperator

# For every player who is near another player, increase harmony score by the number of other players.
#execute as @a[scores={player_group=1..}] run scoreboard players operation @s harmony += @s player_group
execute as @e[type=#shroomhearth:players_and_mannequins,scores={player_group=1..}] run scoreboard players add @s harmony 1

# For any player who is not near another player, decrease harmony by 1.
execute as @e[type=#shroomhearth:players_and_mannequins,scores={player_group=0, harmony=1..}] run scoreboard players remove @s harmony 1

# Chance to spawn a harmony cap after about one minute.
execute as @e[type=#shroomhearth:players_and_mannequins,scores={harmony=64..},sort=random] at @s run function shroomhearth:harmony/harmony_cap/attempt_spawn

# Pulse harmony cap entities
execute as @e[tag=harmony_cap_interaction] at @s run function shroomhearth:harmony/harmony_cap/1s_interaction

# Process spores
function shroomhearth:harmony/spores/1s