# revoke trigger
advancement revoke @s only arena:player_hurt_by_player

# run next step if player is in arena
execute if predicate arena:player_in_arena run function arena:player_hurt_by_player_in_arena