# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"GRAVITY"}

# expend rage
scoreboard players remove @s rage 48

# add value to sequence score (N players + 1)
scoreboard players operation gravitySequence shroomhearth += @s omen_level

# setup target armor stand
execute unless entity @e[tag=gravity_target] run summon minecraft:marker ~ ~ ~ {Tags:["power_target","gravity_target"]}

# kickoff sequence
function ender_dragon:powers/gravity/run_sequence