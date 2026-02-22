# Executor: Player that was hurt by the Omen Ender Dragon's dragon breath attack
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/omen_dragon_breath_hurt_player] "},{"selector":"@s"},{"text":" was hurt by the Omen Ender Dragon's breath attack"}]


# play sound
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 0.5

# sometimes warp player
execute if predicate shroomhearth:random_chance_50 run function shroomhearth:ender_dragon/warp_player

# play particles after teleporting
execute at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 10