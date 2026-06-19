# Executes from the context of a newly summoned aec cloud

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/distort/enhance_radius] Attempting to enhance radius for "},{"selector":"@s"}]

# Enhance radius of the aec
execute if score random shroomhearth matches 0..8 run data modify entity @s Radius set value 6.0f

# Consume an extra sequence score
scoreboard players remove distort_sequence shroomhearth.ender_dragon 1