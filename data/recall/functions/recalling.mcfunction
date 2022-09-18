# triggers once per second on players who are recalling

# interrupt if not holding
execute unless predicate recall:holding_recall_whistle run function recall:interrupted

# increment the timer
scoreboard players add @s[tag=recalling] recallTimer 1

# play "casting" particles and sounds
particle minecraft:shriek 0 ~ ~ ~ ~ ~ ~ 0 0
execute if score @s[tag=recalling] recallTimer matches 1 run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 1 1.6
execute if score @s[tag=recalling] recallTimer matches 2 run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 1 1.7
execute if score @s[tag=recalling] recallTimer matches 3 run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 1 1.8
execute if score @s[tag=recalling] recallTimer matches 4 run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 1 1.9
execute if score @s[tag=recalling] recallTimer matches 5.. run playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 1 2

# cast the recall once the cast time surpasses 5 seconds
execute if score @s[tag=recalling] recallTimer matches 6.. run function recall:cast_recall