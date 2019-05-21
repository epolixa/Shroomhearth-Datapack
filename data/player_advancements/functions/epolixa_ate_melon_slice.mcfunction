# Increment melonEaten score
scoreboard players add @s melonEaten 1

# Check if reached 64
advancement grant @s[scores={melonEaten=64..},advancements={player_advancements:epolixa=false}] only player_advancements:epolixa

# Revoke trigger advancement if haven't received epolixa
advancement revoke @s[advancements={player_advancements:epolixa_ate_melon_slice=true,player_advancements:epolixa=false}] only player_advancements:epolixa_ate_melon_slice