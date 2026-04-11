tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/summon/run_sequence] Running summon sequence"}]


# juggle marker
execute as @e[tag=summon_target] at @s run function shroomhearth:ender_dragon/powers/juggle_power_target

# summon mob at marker
execute as @e[tag=summon_target] at @s run function shroomhearth:ender_dragon/powers/summon/summon_random_thrall

# decrement sequence score
scoreboard players remove summon_sequence shroomhearth.ender_dragon 1

# cleanup marker if value expended
execute if score summon_sequence shroomhearth.ender_dragon matches ..0 run kill @e[tag=summon_target]

# re-schedule if value remains
execute if score summon_sequence shroomhearth.ender_dragon matches 1.. run schedule function shroomhearth:ender_dragon/powers/summon/run_sequence 5t