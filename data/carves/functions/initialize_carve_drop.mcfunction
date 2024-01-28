# Scheduled to execute on next tick after carve loot has been generated 

execute as @e[tag=!initialized,type=minecraft:item,nbt={Item:{tag:{spore:"dragon_tail"}}}] run function carves:initialize_carve_drop_with_context
execute as @e[tag=!initialized,type=minecraft:item,nbt={Item:{tag:{spore:"dragon_scale"}}}] run function carves:initialize_carve_drop_with_context