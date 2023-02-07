# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"DISTORT"}

# play sound
playsound minecraft:entity.elder_guardian.curse hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 12 0.7

# expend rage
scoreboard players remove @s rage 48

# add value to sequence score (N players + 1)
scoreboard players operation distortSequence shroomhearth += dragonPlayers shroomhearth
scoreboard players add distortSequence shroomhearth 1

# setup target armor stand
execute unless entity @e[tag=distort_target] run summon minecraft:armor_stand ~ ~ ~ {Tags:["power_target","distort_target"],Marker:1b,Invulnerable:1b,Invisible:1b}

# kickoff sequence
function ender_dragon:powers/distort/run_sequence

