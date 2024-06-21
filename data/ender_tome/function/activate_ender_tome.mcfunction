# Executes from the context of a player who just unlocked the ender tome dummy crafting recipe.
# In other words, players who "read" and consumed an ender tome.

recipe take @s ender_tome:ender_tome
advancement revoke @s only ender_tome:recipe/ender_tome

say Activating Ender Tome

execute anchored eyes run summon minecraft:ominous_item_spawner ^ ^ ^1 {Tags:["ender_tome"],item:{id:"minecraft:knowledge_book","components":{"custom_model_data": 1,"enchantment_glint_override":true}},spawn_item_after_ticks:72000}
execute anchored eyes run summon minecraft:interaction ^ ^ ^1 {Tags:["ender_tome_interaction"],width:0.3,height:0.3}

#playsound minecraft:block.trial_spawner.about_to_spawn_item neutral @a ^ ^ ^1 1 0.9
playsound minecraft:entity.evoker.prepare_summon neutral @a ^ ^ ^1 1 1.2