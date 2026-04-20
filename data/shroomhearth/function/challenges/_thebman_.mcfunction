# increment score
scoreboard players add @s placed_sandstone 1

# grant advancement if stat is reached
advancement grant @s[scores={placed_sandstone=1679..}] only shroomhearth:challenges/_thebman_/_thebman_

# revoke triggers
advancement revoke @s only shroomhearth:challenges/_thebman_/place_sandstone