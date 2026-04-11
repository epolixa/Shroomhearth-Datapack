tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/distort/start_sequence] Starting distort power"}]


# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"DISTORT"}

# expend rage
scoreboard players remove @s rage 48

# add value to sequence score
scoreboard players operation distort_sequence shroomhearth.ender_dragon += @s omen_level

# setup target armor stand
execute unless entity @e[tag=distort_target] run summon minecraft:marker ~ ~ ~ {Tags:["power_target","distort_target"]}

# kickoff sequence
function ender_dragon:powers/distort/run_sequence