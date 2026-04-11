# increment score
scoreboard players add @s placedRails 1

# grant advancement if stat is reached
advancement grant @s[scores={placedRails=8250..}] only challenges:omega825

# revoke triggers
advancement revoke @s only challenges:place_rail