# juggle marker
execute as @e[tag=summon_target] at @s run function ender_dragon:powers/juggle_power_target

# summon mob at marker
execute as @e[tag=summon_target] at @s run function ender_dragon:powers/summon/summon_random_thrall

# decrement sequence score
scoreboard players remove summonSequence shroomhearth 1

# cleanup marker if value expended
execute if score summonSequence shroomhearth matches ..0 run kill @e[tag=summon_target]

# re-schedule if value remains
execute if score summonSequence shroomhearth matches 1.. run schedule function ender_dragon:powers/summon/run_sequence 7t