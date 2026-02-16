# increment score
scoreboard players add @s placed_block_in_the_nether 1

# grant advancement if stat is reached
advancement grant @s[scores={placed_block_in_the_nether=52778..}] only shroomhearth:challenges/needle_archer/piglin_contractor

# revoke triggers
advancement revoke @s only shroomhearth:challenges/needle_archer/placed_block_in_the_nether