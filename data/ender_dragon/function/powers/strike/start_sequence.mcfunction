# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"STRIKE"}

# expend rage
scoreboard players remove @s rage 32

# add value to sequence score (N players + 1)
scoreboard players operation strikeSequence shroomhearth += @s omen_level

# setup target armor stand
execute unless entity @e[tag=strike_target] run summon minecraft:marker ~ ~ ~ {Tags:["power_target","strike_target"]}

# kickoff sequence
function ender_dragon:powers/strike/run_sequence