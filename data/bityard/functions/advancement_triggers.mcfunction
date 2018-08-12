################################################################
# Advancement Triggers
# controls certain advancements based on complex criteria
################################################################

# Community Participator - group up with 5 other players
execute as @a[scores={playerGroup=5..}, advancements={bityard:community_participator=false}] run advancement grant @s only bityard:community_participator

# Community Builder - reach max community score for a project
execute as @a[scores={community=5000..}, advancements={bityard:community_builder=false}] run advancement grant @s only bityard:community_builder

# AlmightyA - mine over 50k stone blocks
execute as @a[scores={minedStone=50000..}, advancements={bityard:almightya=false}] run advancement grant @s only bityard:almightya

# Mr_Tori - craft a stack of golden carrots
execute as @a[scores={craftedCarrots=64..}, advancements={bityard:mr_tori=false}] run advancement grant @s only bityard:mr_tori
