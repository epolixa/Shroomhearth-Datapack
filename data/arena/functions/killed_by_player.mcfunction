# revoke trigger
advancement revoke @s only arena:killed_by_player

# additional check for if player is in an arena and if anothe rplayer is involved
execute if predicate arena:in_arena if entity @p[distance=0.1..128,predicate=arena:in_arena] run function arena:killed_by_player_in_arena