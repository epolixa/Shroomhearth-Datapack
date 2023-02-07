# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"PILLAR"}

# play sound
playsound minecraft:entity.wither.spawn hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 12 2

# expend rage
scoreboard players remove @s rage 32

# add value to sequence score (N players + 1)
scoreboard players operation pillarSequence shroomhearth += dragonPlayers shroomhearth
scoreboard players add pillarSequence shroomhearth 1

# kickoff sequence
function ender_dragon:powers/pillar/run_sequence