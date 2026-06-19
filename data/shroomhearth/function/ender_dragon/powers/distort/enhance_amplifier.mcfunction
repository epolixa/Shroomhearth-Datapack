# Executes from the context of a newly summoned aec cloud

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/distort/enhance_amplifier] Attempting to enhance amplifier for "},{"selector":"@s"}]

# Enhance amplifiers depending on the effect indicated by random score
execute if score random shroomhearth matches 0..8 run data modify entity @s potion_contents.custom_effects[0].amplifier set value 3
execute if score random shroomhearth matches 9..13 run data modify entity @s potion_contents.custom_effects[0].amplifier set value 1

# Consume an extra sequence score
scoreboard players remove distort_sequence shroomhearth.ender_dragon 1