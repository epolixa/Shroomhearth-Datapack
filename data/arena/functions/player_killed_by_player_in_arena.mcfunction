# revoke trigger
advancement revoke @s only arena:player_killed_by_player_in_arena

# track deaths
scoreboard players add @s arenaDeaths 1

# play particles
particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 8

# generate additional XP
summon minecraft:experience_orb ~ ~ ~ {Value:10}

# grant harmony
scoreboard players add @s harmony 1