# Executor: Player that has been hurt by the Ender Dragon
# Position: The Player

# Revoke trigger
advancement revoke @s only ender_dragon:dragon_hurt_player

# Try to bite the Player
execute as @n[tag=omen_ender_dragon,predicate=ender_dragon:dragon_can_bite] as @p run function ender_dragon:dragon_bite_player

# Reset snatch cooldown while player is riding dragon
execute if predicate ender_dragon:player_riding_dragon run scoreboard players set @n[tag=omen_ender_dragon] snatch_cooldown 10