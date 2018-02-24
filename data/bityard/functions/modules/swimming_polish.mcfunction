################################################################
# Swimming Polish
# bubble breath particles, drippy particles when exiting water
################################################################

# make sure players have the objectives
execute as @a at @s if block ~ ~0.1 ~ #bityard:water run scoreboard players add @s soaked 0
execute as @a at @s if block ~ ~1.9 ~ #bityard:water run scoreboard players add @s bubbleBreath 0


# build up soaked timer while in water
execute as @a[scores={soaked=..159}] at @s if block ~ ~0.1 ~ #bityard:water run scoreboard players add @s soaked 1

# play splash particles when getting out of water
execute as @a[scores={soaked=41..}] at @s unless block ~ ~0.1 ~ #bityard:water run particle minecraft:splash ~ ~0.9 ~ 0.2 0.3 0.2 0 1

# decay soaked timer while out of water
execute as @a[scores={soaked=1..}] at @s unless block ~ ~0.1 ~ #bityard:water run scoreboard players remove @s soaked 1


# trigger bubble "breath" particle timer for submerged players
execute as @a[scores={bubbleBreath=0}] at @s if block ~ ~1.9 ~ #bityard:water run scoreboard players set @s bubbleBreath 20

# bubble "breath" particles on player on timer
execute as @a[scores={bubbleBreath=20}] at @s run particle minecraft:bubble_column_up ~ ~1.4 ~ 0.2 0.2 0.2 0.08 1

# countdown bubble breath
execute as @a[scores={bubbleBreath=1..}] run scoreboard players remove @s bubbleBreath 1