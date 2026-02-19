# Executor: A player who just unlocked the ender tome dummy crafting recipe. In other words, players who "read" and consumed an ender tome.
# Position: The player

tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/activate_ender_tome] Ender Tome activated by "},{"selector":"@s"}]


# Revoke recipe triggers
recipe take @s shroomhearth:ender_tome
advancement revoke @s only shroomhearth:ender_tome/recipe/ender_tome

# Summon the temporary item spawner and interaction entities
execute anchored eyes run summon minecraft:ominous_item_spawner ^ ^-0.15 ^1 {Tags:["ender_tome"],item:{id:"minecraft:knowledge_book","components":{"item_model":"shroomhearth:ender_tome","enchantment_glint_override":true}},spawn_item_after_ticks:72000}
execute anchored eyes run summon minecraft:interaction ^ ^-0.15 ^1 {Tags:["ender_tome_interaction"],width:0.3,height:0.3}

# Play sound
playsound minecraft:entity.evoker.prepare_summon neutral @a ^ ^-0.15 ^1 1 1.25