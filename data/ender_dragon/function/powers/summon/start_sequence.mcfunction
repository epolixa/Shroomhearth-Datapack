# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"SUMMON"}

# expend rage
scoreboard players remove @s rage 48

# add value to sequence score (N players + 1)
scoreboard players operation summonSequence shroomhearth += @s omen_level

# setup target armor stand
execute unless entity @e[tag=summon_target] run summon minecraft:marker ~ ~ ~ {Tags:["power_target","summon_target"]}

# kickoff sequence
function ender_dragon:powers/summon/run_sequence