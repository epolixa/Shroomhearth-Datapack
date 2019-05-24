# Increment melonEaten score
scoreboard players add @s melonEaten 1

# Check if reached 64
advancement grant @s[scores={melonEaten=64..}] only player_advancements:epolixa

# Revoke trigger advancement if haven't received epolixa
advancement revoke @s only player_advancements:ate_melon_slice