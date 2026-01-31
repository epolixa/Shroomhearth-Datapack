# increment score
scoreboard players add @s placedStone 1

# grant advancement if stat is reached
advancement grant @s[scores={placedStone=100000..}] only challenges:skit

# revoke triggers
advancement revoke @s[advancements={challenges:skit=false}] only challenges:place_skit_stone