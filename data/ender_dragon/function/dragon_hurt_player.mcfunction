# revoke advancement
advancement revoke @s only ender_dragon:dragon_hurt_player

# bite player
execute as @n[tag=omen_ender_dragon,predicate=ender_dragon:can_bite] as @p run function ender_dragon:bite_player