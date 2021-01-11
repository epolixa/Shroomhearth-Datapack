# teleport the player
execute positioned -543 82 262 as @s[distance=..2] run function random_tp:teleport

# reset trigger
advancement revoke @s only random_tp:eat