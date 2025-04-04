# revoke trigger
advancement revoke @s only arena:player_killed_by_player_in_arena

# track deaths
scoreboard players add @s arenaDeaths 1

# play particles
particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 8

# artificially drop all xp unless keep inventory favor is active
execute unless score favKeepInventory shroomhearth matches 1.. run function arena:drop_all_xp

# grant harmony
scoreboard players add @s harmony 1