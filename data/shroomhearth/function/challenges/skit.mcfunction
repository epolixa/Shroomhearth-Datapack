# increment score
scoreboard players add @s placed_skit_stone 1

# grant advancement if stat is reached
advancement grant @s[scores={placed_skit_stone=100000..}] only shroomhearth:challenges/skit/skit

# revoke triggers
advancement revoke @s[advancements={shroomhearth:challenges/skit/skit=false}] only shroomhearth:challenges/skit/place_skit_stone