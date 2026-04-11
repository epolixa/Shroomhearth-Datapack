# Executor: A Player that was hurt by the ender dragon's breath attack
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/dragon_breath_hurt_player] "},{"selector":"@s"},{"text":" was hurt by the Ender Dragon's breath attack"}]


# revoke advancement
advancement revoke @s only shroomhearth:ender_dragon/dragon_breath_hurt_player

# run omen ender dragon breath effects
execute if entity @n[tag=omen_ender_dragon] run function shroomhearth:ender_dragon/omen_dragon_breath_hurt_player