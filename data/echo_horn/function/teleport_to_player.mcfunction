# Executor: A player who has finished using an echo horn to teleport to another player
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:teleport_to_player] Attempting to teleport "},{"selector":"@s"},{"text":" to target player"}]

# Teleport to player with matching scores
tag @s add checking_target_player
execute as @e[type=#echo_horn:echo_horn_target,predicate=echo_horn:can_be_teleported_to] \
if score @s UUID1 = @p[tag=checking_target_player] echo_horn_UUID1 \
if score @s UUID2 = @p[tag=checking_target_player] echo_horn_UUID2 \
if score @s UUID3 = @p[tag=checking_target_player] echo_horn_UUID3 \
if score @s UUID4 = @p[tag=checking_target_player] echo_horn_UUID4 \
at @s run function echo_horn:found_target_player
tag @s remove checking_target_player

# Log if no target player was found
execute unless entity @s[tag=echo_horn_teleport_success] run tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:teleport_to_player] No target player found for "},{"selector":"@s"}]

# Notify the echo horn user if player could not be teleported to
execute unless entity @s[tag=echo_horn_teleport_success] if entity @s[tag=using_echo_horn_mainhand] run title @s actionbar [{"text":"You may not teleport to "},{"nbt":"SelectedItem.components.minecraft:lore[].extra[].text","entity":"@s"},{"text":" right now"}]
execute unless entity @s[tag=echo_horn_teleport_success] if entity @s[tag=using_echo_horn_offhand] run title @s actionbar [{"text":"You may not teleport to "},{"nbt":"equipment.offhand.components.minecraft:lore[].extra[].text","entity":"@s"},{"text":" right now"}]

# Grant advancement for using another player's echo horn
advancement grant @s[tag=echo_horn_teleport_success] only echo_horn:soulbound