# increase community when communityTicks reaches 6000
scoreboard players add @s community 1

# reset communityTicks when it reaches 6000
scoreboard players set @s communityTicks 0

# subtle particle effect
particle minecraft:note ~ ~2.4 ~ 0.1 0.1 0.1 1 1

# give small amount of xp
xp add @s 1 points

# grant advancement if community has reached 5000
advancement grant @s[scores={community=5000..}, advancements={community:community_builder=false}] only community:community_builder