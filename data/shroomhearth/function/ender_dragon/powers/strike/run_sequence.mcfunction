tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/strike/run_sequence] Running strike sequence"}]


# juggle marker
execute as @e[tag=strike_target] at @s run function shroomhearth:ender_dragon/powers/juggle_power_target

# summon lightning at marker
execute as @e[tag=strike_target] at @s run summon minecraft:lightning_bolt ~ ~ ~

# decrement sequence score
scoreboard players remove strike_sequence shroomhearth.ender_dragon 1

# cleanup marker if value expended
execute if score strike_sequence shroomhearth.ender_dragon matches ..0 run kill @e[tag=strike_target]

# re-schedule if value remains
execute if score strike_sequence shroomhearth.ender_dragon matches 1.. run schedule function shroomhearth:ender_dragon/powers/strike/run_sequence 5t