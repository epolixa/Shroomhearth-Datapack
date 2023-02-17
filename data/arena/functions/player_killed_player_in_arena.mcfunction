# revoke trigger
advancement revoke @s only arena:player_killed_player_in_arena

# track kill stat
scoreboard players add @s arenaKills 1

# grant advancement
advancement grant @s only arena:arena_challenger

# play sound
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.7