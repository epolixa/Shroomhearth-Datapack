# increment score
scoreboard players add @s placed_rails 1

# grant advancement if stat is reached
advancement grant @s[scores={placed_rails=8250..}] only shroomhearth:challenges/omega825/omega825

# revoke triggers
advancement revoke @s only shroomhearth:challenges/omega825/place_rail