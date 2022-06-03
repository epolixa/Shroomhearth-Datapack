# increment score
scoreboard players add @s spreadMoss 1

# grant advancement if stat is reached
advancement grant @s[scores={spreadMoss=5000..}] only player_advancements:clown_professor

# revoke triggers
advancement revoke @s only player_advancements:spread_moss