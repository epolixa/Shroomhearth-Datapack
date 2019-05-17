# decrease community when communityTicks reaches -1200 if score is greater than 0
scoreboard players remove @s[scores={community=1..}] community 1

# reset communityTicks when it reaches -1200
scoreboard players set @s communityTicks 0