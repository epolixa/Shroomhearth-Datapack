# juggle marker
execute as @e[tag=gravity_target] at @s run function ender_dragon:powers/juggle_power_target

# summon aec at marker
execute as @e[tag=gravity_target] at @s run function ender_dragon:powers/gravity/summon_gravity_field

# decrement sequence score
scoreboard players remove gravitySequence shroomhearth 1

# cleanup marker if value expended
execute if score gravitySequence shroomhearth matches ..0 run kill @e[tag=gravity_target]

# re-schedule if value remains
execute if score gravitySequence shroomhearth matches 1.. run schedule function ender_dragon:powers/gravity/run_sequence 5t