# track kill stat
scoreboard players add @s arenaKills 1

# grant advancement
advancement grant @s only arena:arena_challenger

# grant additional harmony
scoreboard players add @s harmony 1

# play sound
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.7