# Executor: Server, scheduled to execute on next tick after carve loot has been generated 
# Position: Spawn

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/initialize_carve_drop] Initializing carve drop "}]


# Runes - fix this to not rely on shroomhearth_id since each now have a unique ID
execute as @n[tag=!initialized,type=minecraft:item,predicate=shroomhearth:ender_dragon/is_rune_item_entity] run function shroomhearth:ender_dragon/initialize_carve_drop_with_context

# Future "Dragon Tail" drop
#execute as @n[tag=!initialized,type=minecraft:item,nbt={Item:{tag:{shroomhearth_id"dragon_tail"}}}] run function shroomhearth:ender_dragon/initialize_carve_drop_with_context