# this tag identifies the player that is returning home
tag @s add cast_recall

# run some commands as the marker...
execute as @e[tag=recall_marker] run function tphome:teleport_to_marker

# remove cast tag
tag @s remove cast_recall