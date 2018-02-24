################################################################
# Drop Item
# play a plop sound when dropping an item
################################################################

# play sound when drop an item
execute as @a[scores={dropItem=1..}] at @s run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.3 0.8

# reset score
execute as @a[scores={dropItem=1..}] run scoreboard players set @s dropItem 0 