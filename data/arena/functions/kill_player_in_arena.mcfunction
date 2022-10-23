# track kill stat
scoreboard players add @s arenaKills 1

# grant advancement
advancement grant @s only arena:arena_challenger

# grant additional XP
execute as @p[distance=0.1..] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:5}

# grant additional harmony if more than one player is involved?
execute as @a[distance=0.1..128,predicate=arena:in_arena] run scoreboard players add @a[distance=0.1..128,predicate=arena:in_arena] harmony 1


# play sound or particles?