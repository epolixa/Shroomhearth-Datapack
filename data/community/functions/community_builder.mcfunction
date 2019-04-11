################################################################
# Community Builder
# reach max community score for a project
################################################################

execute as @a[scores={community=5000..}, advancements={community:community_builder=false}] run advancement grant @s only community:community_builder