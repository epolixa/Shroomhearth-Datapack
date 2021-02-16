# set lcg
scoreboard players set bityard lcgModulus 3
function bityard:lcg/random

# spawn "experienced" particles on player with 30% chance
execute if score bityard lcg matches 0 at @s run particle minecraft:totem_of_undying ~ ~1.9 ~ 0.1 0.1 0.1 0.2 1

# revoke trigger
advancement revoke @s only stat_display:high_level