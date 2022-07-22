# intended to be run from the context of an entity
# checks the coords of the entity and stores its chunk coords in a scoreboard objective

execute store result score @s chunkX run data get entity @s Pos[0] 0.0625
execute store result score @s chunkZ run data get entity @s Pos[2] 0.0625