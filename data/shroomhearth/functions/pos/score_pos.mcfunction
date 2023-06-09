# executes from the context of an entity and stores their Pos values into 3 integer scoreboard objectives, useful for readable positions
execute store result score @s pos_x run data get entity @s Pos[0]
execute store result score @s pos_y run data get entity @s Pos[1]
execute store result score @s pos_z run data get entity @s Pos[2]
