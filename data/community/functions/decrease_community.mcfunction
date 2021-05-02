# decrease community when communityTicks reaches min if score is greater than 0
scoreboard players remove @s[scores={community=1..}] community 1

# reset communityTicks when it reaches min
scoreboard players set @s communityTicks 0