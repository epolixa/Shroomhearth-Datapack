tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/gravity/run_sequence] Running gravity power"}]


# juggle marker
execute as @e[tag=gravity_target] at @s run function shroomhearth:ender_dragon/powers/juggle_power_target

# summon aec at marker
execute as @e[tag=gravity_target] at @s run function shroomhearth:ender_dragon/powers/gravity/summon_gravity_field

# decrement sequence score
scoreboard players remove gravity_sequence shroomhearth.ender_dragon 1

# cleanup marker if value expended
execute if score gravity_sequence shroomhearth.ender_dragon matches ..0 run kill @e[tag=gravity_target]

# re-schedule if value remains
execute if score gravity_sequence shroomhearth.ender_dragon matches 1.. run schedule function shroomhearth:ender_dragon/powers/gravity/run_sequence 5t