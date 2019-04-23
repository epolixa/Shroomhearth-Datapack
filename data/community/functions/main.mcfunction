################################################################
# Community Score
# controls community score calculation
################################################################

# reset playerGroup for recalculation
scoreboard players set @a playerGroup 0

# set playerGroup for each player to the number of players within 32 blocks
execute as @a at @s run scoreboard players add @a[distance=1..32] playerGroup 1

# if nearby a player, tick up communityTicks based on how many players are nearby
execute as @a[scores={playerGroup=1..}] run scoreboard players operation @s communityTicks += @s playerGroup 

# grant advancement if nearby enought players
advancement grant @a[scores={playerGroup=5..}, advancements={community:community_participator=false}] only community:community_participator

# if not nearby a player, tick down communityTicks by one
execute if score Env playerCount matches 2.. as @a[scores={playerGroup=..0}] run scoreboard players remove @s communityTicks 1

# increase community when ticks reach 6000
execute as @a[scores={communityTicks=6000..}] run function community:increase_community

# decrease community when communityTicks reaches -6000
execute as @a[scores={communityTicks=..-6000}] run function community:decrease_community

# bonus tick if nearby a cursed player (disabled right now)
#execute as @a[scores={playerGroup=1..,curse=1..6000}] at @s run scoreboard players add @a[distance=1..32] communityTicks 1

# if not nearby a player, tick down communityTicks based on how many players are online (DISABLED)
#execute if score Env playerCount matches 2.. as @a[scores={playerGroup=..0}] run scoreboard players operation @s communityTicks -= Env playerCount
#execute if score Env playerCount matches 2.. as @a[scores={playerGroup=..0}] run scoreboard players add @s communityTicks 1