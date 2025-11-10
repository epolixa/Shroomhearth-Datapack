# Get count of mushrooms and compare to harmonyCluster of proc'd mushroom
# Set harmonyCluster for every harmony mushroom to the number of other mushrooms within range.
# Mushrooms within 32 blocks of each other are considered clustered.

execute store result score @s harmonyCluster if entity @e[tag=harmony_mushroom_interaction,distance=..32]
execute if score @s harmonyCluster < @p[tag=spawning_harmony_mushroom] playerGroup if block ~ ~-0.1 ~ run summon minecraft:interaction ~ ~ ~ {Tags:["harmony_mushroom","harmony_mushroom_interaction","new_harmony_mushroom_interaction"], height: 0.5625, width: 0.5}

execute as @n[tag=new_harmony_mushroom_interaction] at @s run function community:initialize_harmony_mushroom_interaction

particle minecraft:firefly ~ ~0.1 ~ 0.1 0 0.1 0 1

kill @s