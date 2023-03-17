# create pillars at endermen
execute in minecraft:the_end positioned 0 60 0 as @e[type=minecraft:enderman,limit=1,sort=random,distance=8..40] at @s run function ender_dragon:powers/pillar/build_pillar

# decrement sequence score
scoreboard players remove pillarSequence shroomhearth 1

# re-schedule if value remains
execute if score pillarSequence shroomhearth matches 1.. run schedule function ender_dragon:powers/pillar/run_sequence 10t