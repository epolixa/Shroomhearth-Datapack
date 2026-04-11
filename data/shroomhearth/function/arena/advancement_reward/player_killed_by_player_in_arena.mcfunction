# revoke trigger
advancement revoke @s only shroomhearth:arena/player_killed_by_player_in_arena

# track deaths
scoreboard players add @s arena_deaths 1

# play particles
particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 8

# artificially drop all xp unless keep inventory favor is active
execute unless score spores_of_keeping shroomhearth.harmony matches 1.. run function shroomhearth:arena/drop_all_xp

# grant harmony
scoreboard players add @s harmony 1