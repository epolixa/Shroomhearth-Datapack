# Executor: any entity, typically a player
# Position: inherit

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:score_coordinates] Scoring coordinates for "},{"selector":"@s"}]


# Capture entity coordinates to scores
execute store result score @s pos_x run data get entity @s Pos[0]
execute store result score @s pos_y run data get entity @s Pos[1]
execute store result score @s pos_z run data get entity @s Pos[2]
