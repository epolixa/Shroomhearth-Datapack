################################################################
# Community Builder
# reach max community score for a project
################################################################

execute as @a[scores={community=5000..}, advancements={bityard:community_builder=false}] run advancement grant @s only bityard:community_builder