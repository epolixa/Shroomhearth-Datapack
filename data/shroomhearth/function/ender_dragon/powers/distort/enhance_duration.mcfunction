# Executes from the context of a newly summoned aec cloud

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/distort/enhance_duration] Attempting to enhance duration for "},{"selector":"@s"}]

# Enhance duration of the aec
execute if score random shroomhearth matches 0..8 run data modify entity @s Duration set value 1200

# Consume an extra sequence score
scoreboard players remove distort_sequence shroomhearth.ender_dragon 1