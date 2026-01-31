# Executor: Player who just consumed a Hyphal Knot while the world border is growing
# Position: The player

tellraw @a[tag=debug_world_border] [{"text":"[world_border:deny_hyphal_knot] "},{"selector":"@s"},{"text":" failed to unravel a Hyphal Knot while the World Border is growing"}]


# Warn the player in action bar
title @s actionbar {"translate":"world_border.deny_hyphal_knot","fallback":"You may not unravel a Hyphal Knot while the World Border is growing"}

# Drop the Hyphal Knot
execute as @s[gamemode=survival] run loot spawn ~ ~ ~ loot world_border:hyphal_knot

# Play sound
playsound minecraft:item.lead.untied player