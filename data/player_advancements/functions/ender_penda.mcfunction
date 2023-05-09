# check that player fell on slime block and grant main advancement
execute if block ~ ~-0.5 ~ minecraft:slime_block run advancement grant @s only player_advancements:ender_penda 

# revoke trigger if advancement not granted
advancement revoke @s[advancements={player_advancements:ender_penda=false}] only player_advancements:fall_from_height