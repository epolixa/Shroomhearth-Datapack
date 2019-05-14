# track kill stat
scoreboard players add @s arenaKills 1

# play sound and particles?

# grant additional XP
execute as @p[distance=0.1..] run summon minecraft:experience_orb ~ ~ ~ {Value:5}

# revoke trigger
advancement revoke @s only arena:kill_player