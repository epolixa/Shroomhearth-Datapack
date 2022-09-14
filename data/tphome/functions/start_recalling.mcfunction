tellraw @s "start recalling"

tag @s add recalling

scoreboard players reset @s recallTimer

effect give @s slowness 10 5 true

playsound minecraft:entity.allay.item_thrown player @a ~ ~ ~ 1 0.5