# Scheduled to execute on next tick after carve loot has been generated 

execute as @n[tag=!initialized,type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{spore:"rune"}}}}] run function ender_dragon:initialize_carve_drop_with_context
#execute as @n[tag=!initialized,type=minecraft:item,nbt={Item:{tag:{spore:"dragon_tail"}}}] run function ender_dragon:initialize_carve_drop_with_context