# Runs from the context and at the position of an echo tracker every second

tellraw @a[tag=debug_echoes] [{"text":"Echo Tracker pulsing, looking for Player matching "},{"score":{"name":"@s","objective":"UUID1"}},{"text":","},{"score":{"name":"@s","objective":"UUID2"}},{"text":","},{"score":{"name":"@s","objective":"UUID3"}},{"text":","},{"score":{"name":"@s","objective":"UUID4"}}]

# Debug particles
particle minecraft:sonic_boom ~ ~0.5 ~ 0 0 0 0 1 force @a[tag=debug_echoes]

# track matching player
tag @s remove tracked_player
execute positioned as @a[tag=echo_tracking,gamemode=!spectator] if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 if score @s UUID4 = @p UUID4 run function echoes:track_player

# if the marker did not find a player this pulse, convert to echoes armor stand
execute as @s[tag=!tracked_player] run function echoes:logged_out