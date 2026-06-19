tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/distort/run_sequence] Running distort power"}]

# consume sequence score
scoreboard players remove distort_sequence shroomhearth.ender_dragon 1

# juggle marker
execute as @e[tag=distort_target] at @s run function shroomhearth:ender_dragon/powers/juggle_power_target

# summon aec at marker
execute as @e[tag=distort_target] at @s summon minecraft:area_effect_cloud run function shroomhearth:ender_dragon/powers/distort/initialize_aec

# cleanup marker if value expended
execute if score distort_sequence shroomhearth.ender_dragon matches ..0 run kill @e[tag=distort_target]

# re-schedule if value remains
execute if score distort_sequence shroomhearth.ender_dragon matches 1.. run schedule function shroomhearth:ender_dragon/powers/distort/run_sequence 5t