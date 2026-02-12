# Scheduled to execute on next tick after carve loot has been generated 

execute as @n[tag=!initialized,type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{shroomhearth_id"rune"}}}}] run function ender_dragon:initialize_carve_drop_with_context
#execute as @n[tag=!initialized,type=minecraft:item,nbt={Item:{tag:{shroomhearth_id"dragon_tail"}}}] run function ender_dragon:initialize_carve_drop_with_context