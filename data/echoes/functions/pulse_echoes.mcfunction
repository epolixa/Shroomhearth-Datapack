# Runs from the context and at the position of an echoes armor stand every second

tellraw @a[tag=debug_echoes] [{"text":"Echoes pulsing, waiting for matching player to return..."}]

# Play particles
particle minecraft:soul_fire_flame ~ ~0.8 ~ 0.1 0.2 0.1 0 1 force

# Search for matching player
tag @s remove found_player
execute positioned as @a[gamemode=!spectator] if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 if score @s UUID4 = @p UUID4 run function echoes:logged_in

# Grant advancements to nearby players if assigned player is not nearby
execute as @s[tag=!found_player] run advancement grant @a[distance=..16,gamemode=!spectator] only echoes:the_long_dream

# Remove self if assigned player found
execute as @s[tag=found_player] run kill @s
