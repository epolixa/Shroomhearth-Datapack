# Executor: An interaction entity representing the echoes of an offline player
# Position: The interaction entity (where the player was last seen)

#tellraw @a[tag=debug_echoes2] [{"text":"[echoes.pulse_echoes] pulsing Echoes of "},{"nbt":"data.player.name","entity":"@s"},{"text":"..."}]

# Count pulse
scoreboard players add @s echoes_pulses 1

# Play particles
particle minecraft:soul_fire_flame ~ ~0.125 ~ 0.0625 0.125 0.0625 0 1 force

# Check if their player is back online and handle dismissal if they are
function echoes2:m_find_echoes_player with entity @s data.player