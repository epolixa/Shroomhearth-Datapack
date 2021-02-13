# play sound for dropping an item
execute at @s run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.3 0.8

# reset score
scoreboard players set @s dropItem 0