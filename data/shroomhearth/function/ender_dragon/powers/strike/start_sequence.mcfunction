tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/strike/start_sequence] Starting strike sequence"}]


# show actionbar
title @a[predicate=shroomhearth:ender_dragon/on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"STRIKE"}

# expend rage
scoreboard players remove @s rage 32

# add value to sequence score (N players + 1)
scoreboard players operation strike_sequence shroomhearth.ender_dragon += @s omen_level

# setup target armor stand
execute unless entity @e[tag=strike_target] run summon minecraft:marker ~ ~ ~ {Tags:["power_target","strike_target"]}

# kickoff sequence
function shroomhearth:ender_dragon/powers/strike/run_sequence