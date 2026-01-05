# Executor: A player that has just died
# Position: Root

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:player_died] Player died: "},{"selector":"@s"}]

# Remove respawned tag
tag @s remove respawned

# Reset death count scoreboard to allow detection of future deaths
scoreboard players reset @s death_count