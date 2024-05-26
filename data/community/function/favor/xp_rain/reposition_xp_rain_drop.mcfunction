# reposition the entity
spreadplayers ~ ~ 0 16 false @s
execute at @s run tp @s ~ 320 ~

# untag and retag the entity
tag @s remove xp_rain_reposition
tag @s add xp_rain_falling

