# Executor: A player who has successfully teleported using an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/damage_echo_horn] "},{"selector":"@s"},{"text":" echo horn is taking durability damage"}]


# Check which hand is holding the echo horn
function shroomhearth:echo_horn/check_holding

# Damage the echo horn in the player's main hand
item modify entity @s[tag=using_echo_horn_mainhand] weapon.mainhand shroomhearth:echo_horn/damage_echo_horn
item modify entity @s[tag=using_echo_horn_offhand] weapon.offhand shroomhearth:echo_horn/damage_echo_horn

# Break the echo horn in the player's main hand if its durability is zero
execute if entity @s[tag=using_echo_horn_mainhand] if data entity @s SelectedItem.components{"minecraft:damage":100} run function shroomhearth:echo_horn/break_echo_horn
execute if entity @s[tag=using_echo_horn_offhand] if data entity @s equipment.offhand.components{"minecraft:damage":100} run function shroomhearth:echo_horn/break_echo_horn