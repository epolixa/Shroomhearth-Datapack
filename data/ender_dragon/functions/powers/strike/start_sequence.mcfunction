# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"STRIKE"}

# play sound
playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 12 0.7

# expend rage
scoreboard players remove @s rage 32

# add value to sequence score (N players + 1)
scoreboard players operation strikeSequence shroomhearth += dragonPlayers shroomhearth
scoreboard players add strikeSequence shroomhearth 1

# setup target armor stand
execute unless entity @e[tag=strike_target] run summon minecraft:armor_stand ~ ~ ~ {Tags:["power_target","strike_target"],Marker:1b,Invulnerable:1b,Invisible:1b}

# kickoff sequence
function ender_dragon:powers/strike/run_sequence