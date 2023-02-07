# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"SUMMON"}

# play sound
playsound minecraft:entity.evoker.cast_spell hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 12 0.7

# expend rage
scoreboard players remove @s rage 48

# add value to sequence score (N players + 1)
scoreboard players operation summonSequence shroomhearth += dragonPlayers shroomhearth
scoreboard players add summonSequence shroomhearth 1

# setup target armor stand
execute unless entity @e[tag=summon_target] run summon minecraft:armor_stand ~ ~ ~ {Tags:["power_target","summon_target"],Marker:1b,Invulnerable:1b,Invisible:1b}

# kickoff sequence
function ender_dragon:powers/summon/run_sequence