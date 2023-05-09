# increment score
scoreboard players add @s placedStone 1

# grant advancement if stat is reached
advancement grant @s[scores={placedStone=100000..}] only player_advancements:skit

# revoke triggers
advancement revoke @s[advancements={player_advancements:skit=false}] only player_advancements:place_skit_stone