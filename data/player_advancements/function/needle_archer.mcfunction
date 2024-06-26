# increment score
scoreboard players add @s placeBlockInNether 1

# grant advancement if stat is reached
advancement grant @s[scores={placeBlockInNether=25000..}] only player_advancements:needle_archer

# revoke triggers
advancement revoke @s only player_advancements:place_block_in_nether