# increase community when communityTicks reaches 6000
scoreboard players add @s community 1

# reset communityTicks when it reaches 6000
scoreboard players set @s communityTicks 0

# grant advancement if community has reached 5000
advancement grant @s[scores={community=5000..}, advancements={community:community_builder=false}] only community:community_builder