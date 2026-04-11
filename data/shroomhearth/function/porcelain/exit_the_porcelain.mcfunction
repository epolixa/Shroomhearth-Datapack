# Executor: Player who used a Porcelain Amphora while in The Porcelain and is exiting it
# Position: The Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/exit_the_porcelain] "},{"selector":"@s"},{"text":" is exiting The Porcelain"}]


# Clear the Player's inventory
clear @s

# Find the Player's Porcelain Amphora in their source dimension matching their UUID
tag @s add exiting_porcelain
execute as @e[tag=porcelain_amphora] \
if score @p[tag=exiting_porcelain] uuid_1 = @s porcelain_amphora_uuid_1 \
if score @p[tag=exiting_porcelain] uuid_2 = @s porcelain_amphora_uuid_2 \
if score @p[tag=exiting_porcelain] uuid_3 = @s porcelain_amphora_uuid_3 \
if score @p[tag=exiting_porcelain] uuid_4 = @s porcelain_amphora_uuid_4 \
run function shroomhearth:porcelain/teleport_player_to_porcelain_amphora
tag @s remove exiting_porcelain

# If the amphora was not found, teleport the player to world spawn
execute as @s[tag=!found_porcelain_amphora] run function shroomhearth:porcelain/exit_without_porcelain_amphora

# Set the Player's gamemode back to Survival
gamemode survival @s[gamemode=creative]

# Play travel effects
execute at @s run function shroomhearth:porcelain/travel_effects