################################################################
# Community Score
# controls community score calculation
################################################################

# increase community when communityTicks reaches 1200
scoreboard players add @a[scores={communityTicks=1200..}] community 1
scoreboard players set @a[scores={communityTicks=1200..}] communityTicks 0

# decrease community when communityTicks reaches -1200
scoreboard players remove @a[scores={communityTicks=..-1200, community=1..}] community 1
scoreboard players set @a[scores={communityTicks=..-1200}] communityTicks 0

# if nearby a player, tick up communityTicks based on how many players are nearby
execute as @a[scores={playerGroup=1..}] at @s run scoreboard players operation @s communityTicks += @s playerGroup 

# bonus tick if nearby cursed player
execute as @a[scores={playerGroup=1..,curse=1..100}] at @s run scoreboard players add @a[distance=1..32] communityTicks 1

# if not nearby a player, tick down communityTicks based on how many players are online
execute if score Env playerCount matches 2.. as @a[scores={playerGroup=..0}] at @s run scoreboard players operation @s communityTicks -= Env playerCount
execute if score Env playerCount matches 2.. as @a[scores={playerGroup=..0}] at @s run scoreboard players add @s communityTicks 1