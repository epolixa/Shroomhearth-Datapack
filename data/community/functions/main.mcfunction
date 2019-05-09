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

# grant advancement if nearby enough players
advancement grant @a[scores={playerGroup=5..}, advancements={community:community_participator=false}] only community:community_participator

# if not nearby a player, tick down communityTicks by one
execute as @a[scores={playerGroup=0}] run scoreboard players remove @s communityTicks 1

# increase community when ticks reach 6000
execute as @a[scores={communityTicks=6000..}] run function community:increase_community

# decrease community when communityTicks reaches -6000
execute as @a[scores={communityTicks=..-6000}] run function community:decrease_community