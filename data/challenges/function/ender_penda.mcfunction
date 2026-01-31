# check that player fell on slime block and grant main advancement
#execute if block ~ ~-0.5 ~ minecraft:slime_block run advancement grant @s only challenges:ender_penda 
advancement grant @s[predicate=challenges:on_slime_block_at_bottom_of_world] only challenges:ender_penda

# revoke trigger if advancement not granted
advancement revoke @s[advancements={challenges:ender_penda=false}] only challenges:fall_from_height