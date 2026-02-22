tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/distort/run_sequence] Running distort power"}]


# juggle marker
execute as @e[tag=distort_target] at @s run function shroomhearth:ender_dragon/powers/juggle_power_target

# summon aec at marker
execute as @e[tag=distort_target] at @s run function shroomhearth:ender_dragon/powers/distort/summon_random_aec

# decrement sequence score
scoreboard players remove distort_sequence shroomhearth.ender_dragon 1

# cleanup marker if value expended
execute if score distort_sequence shroomhearth.ender_dragon matches ..0 run kill @e[tag=distort_target]

# re-schedule if value remains
execute if score distort_sequence shroomhearth.ender_dragon matches 1.. run schedule function shroomhearth:ender_dragon/powers/distort/run_sequence 5t