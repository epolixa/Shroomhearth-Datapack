# increment score
scoreboard players add @s placedSandstone 1

# grant advancement if stat is reached
advancement grant @s[scores={placedSandstone=1679..}] only player_advancements:_thebman_

# revoke triggers
advancement revoke @s only player_advancements:place_sandstone