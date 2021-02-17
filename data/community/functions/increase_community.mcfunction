# increase community when communityTicks reaches max
scoreboard players add @s community 1

# reset communityTicks when it reaches max
scoreboard players set @s communityTicks 0

# subtle particle effect
particle minecraft:note ~ ~2.4 ~ 0.1 0.1 0.1 1 1

# give small amount of xp
xp add @s 1 points