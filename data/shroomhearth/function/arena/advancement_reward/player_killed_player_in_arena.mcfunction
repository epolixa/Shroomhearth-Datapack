# revoke trigger
advancement revoke @s only shroomhearth:arena/player_killed_player_in_arena

# track kill stat
scoreboard players add @s arena_kills 1

# play sound
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.75

# grant harmony
scoreboard players add @s harmony 1

# grant advancement
advancement grant @s only shroomhearth:arena/arena_challenger