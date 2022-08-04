# play effects
execute positioned 112 75 0 run function random_tp:effects

# revoke the trigger
advancement revoke @s only random_tp:touch_link

# clear the dummy effects
effect clear @s minecraft:nausea

# teleport the player to the target
tp @s @p[tag=random_tp_target]

# grant advancement
advancement grant @s only random_tp:adventuring_party