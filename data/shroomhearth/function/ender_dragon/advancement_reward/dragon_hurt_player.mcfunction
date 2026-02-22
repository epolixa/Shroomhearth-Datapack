# Executor: Player that has been hurt by the Ender Dragon
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/dragon_hurt_player] "},{"selector":"@s"},{"text":" was hurt by the Ender Dragon"}]


# Revoke trigger
advancement revoke @s only shroomhearth:ender_dragon/dragon_hurt_player

# Try to bite the Player if the player is not already riding
execute unless predicate shroomhearth:ender_dragon/player_riding_dragon at @n[tag=omen_ender_dragon,predicate=shroomhearth:ender_dragon/dragon_can_bite] run function shroomhearth:ender_dragon/dragon_bite_player

# Reset snatch cooldown while player is riding dragon
execute if predicate shroomhearth:ender_dragon/player_riding_dragon run scoreboard players set @n[tag=omen_ender_dragon] snatch_cooldown 10