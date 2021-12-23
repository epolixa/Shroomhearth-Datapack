# increment score
scoreboard players add @s placedRails 1

# grant advancement if stat is reached
advancement grant @s[scores={placedRails=1825..}] only player_advancements:omega825

# revoke triggers
advancement revoke @s only player_advancements:place_rail