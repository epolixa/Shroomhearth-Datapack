# triggers once per second on players who are recalling

tellraw @s "recalling..."

# interrupt if not holding
execute unless predicate tphome:holding_recall_whistle run function tphome:interrupted

# increment the timer
scoreboard players add @s[tag=recalling] recallTimer 1

# play "casting" particles and sounds
particle minecraft:shriek 0 ~ ~ ~ ~ ~ ~ 0 0
playsound minecraft:block.beacon.ambient player @a ~ ~ ~ 1 2

# cast the recall once the cast time surpasses 5 seconds
# delay the cast if another player is in the middle of casting
execute if score @s[tag=recalling] recallTimer matches 6.. unless entity @a[tag=cast_recall,distance=0..] run function tphome:cast_recall