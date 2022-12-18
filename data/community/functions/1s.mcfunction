# Reset playerGroup for every player so that it may be re-calculated.
scoreboard players set @a playerGroup 0

# Set playerGroup for every player to the number of other players within range.
# Max range is 160 blocks, or 10 chunks, the default Minecraft server render distance.
execute as @a[gamemode=!spectator] at @s run scoreboard players add @a[gamemode=!spectator,distance=0.1..160] playerGroup 1

# Grant Community Cooperator advancement to any player who is near 5 or more other players.
advancement grant @a[scores={playerGroup=5..}] only community:community_cooperator

# For every player who is near another player, increase presence by the number of other players.
execute as @a[scores={playerGroup=1..}] run scoreboard players operation @s presence += @s playerGroup 

# For any player who is not near another player, decrease presence by 1.
execute as @a[scores={playerGroup=0}] run scoreboard players remove @s presence 1

# Increase a player's harmony when their presence exceeds the positive threshold.
# The threshold is set to 180 so that any player who is near 5 other players for about 1 hour should have about 100 harmony. ((5 players * 60 seconds * 60 minutes)) / 100 harmony)
execute as @a[scores={presence=180..}] at @s run function community:increase_harmony

# Decrease harmony when presence exceeds negative threshold.
execute as @a[scores={presence=..-180}] run function community:decrease_harmony