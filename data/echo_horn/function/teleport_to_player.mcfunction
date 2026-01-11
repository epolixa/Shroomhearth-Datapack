# Executor: A player who has finished using an echo horn to teleport to another player
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:teleport_to_player] Attempting to teleport "},{"selector":"@s"},{"text":" to target player"}]

# Teleport to player with matching scores
# Why does this work in-game but not in function?

tag @s add checking_teleport_target

execute as @e[type=#echo_horn:echo_horn_target] \
if score @s UUID1 = @p[tag=checking_teleport_target] echo_horn_UUID1 \
if score @s UUID2 = @p[tag=checking_teleport_target] echo_horn_UUID2 \
if score @s UUID3 = @p[tag=checking_teleport_target] echo_horn_UUID3 \
if score @s UUID4 = @p[tag=checking_teleport_target] echo_horn_UUID4 \
at @s run function echo_horn:found_target_player 

tag @s remove checking_teleport_target

#teleport @s @n[tag=echo_horn_teleport_target]

#tag @n[tag=echo_horn_teleport_target] remove echo_horn_teleport_target

execute unless entity @s[tag=echo_horn_teleport_success] run tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:teleport_to_player] No target player found for "},{"selector":"@s"}]