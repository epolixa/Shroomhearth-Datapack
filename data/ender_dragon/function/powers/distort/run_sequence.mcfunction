# juggle marker
execute as @e[tag=distort_target] at @s run function ender_dragon:powers/juggle_power_target

# summon aec at marker
execute as @e[tag=distort_target] at @s run function ender_dragon:powers/distort/summon_random_aec

# decrement sequence score
scoreboard players remove distortSequence shroomhearth 1

# cleanup marker if value expended
execute if score distortSequence shroomhearth matches ..0 run kill @e[tag=distort_target]

# re-schedule if value remains
execute if score distortSequence shroomhearth matches 1.. run schedule function ender_dragon:powers/distort/run_sequence 5t