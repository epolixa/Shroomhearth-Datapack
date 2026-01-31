# increment score
scoreboard players add @s placedSandstone 1

# grant advancement if stat is reached
advancement grant @s[scores={placedSandstone=1679..}] only challenges:_thebman_

# revoke triggers
advancement revoke @s only challenges:place_sandstone