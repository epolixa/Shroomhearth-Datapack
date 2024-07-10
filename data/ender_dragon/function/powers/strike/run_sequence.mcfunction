# juggle marker
execute as @e[tag=strike_target] at @s run function ender_dragon:powers/juggle_power_target

# summon lightning at marker
execute as @e[tag=strike_target] at @s run summon minecraft:lightning_bolt ~ ~ ~

# decrement sequence score
scoreboard players remove strikeSequence shroomhearth 1

# cleanup marker if value expended
execute if score strikeSequence shroomhearth matches ..0 run kill @e[tag=strike_target]

# re-schedule if value remains
execute if score strikeSequence shroomhearth matches 1.. run schedule function ender_dragon:powers/strike/run_sequence 5t