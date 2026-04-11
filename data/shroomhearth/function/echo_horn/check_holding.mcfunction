# Executor: A player whose echo horn holding status is being checked
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/check_holding] Checking echo horn holding for "},{"selector":"@s"}]


# Clear previous tags
tag @s remove using_echo_horn_mainhand
tag @s remove using_echo_horn_offhand

# Check if player is holding echo horn in either hand
execute if predicate shroomhearth:echo_horn/holding_echo_horn_mainhand run tag @s add using_echo_horn_mainhand
execute if predicate shroomhearth:echo_horn/holding_echo_horn_offhand unless predicate shroomhearth:echo_horn/holding_echo_horn_mainhand run tag @s add using_echo_horn_offhand