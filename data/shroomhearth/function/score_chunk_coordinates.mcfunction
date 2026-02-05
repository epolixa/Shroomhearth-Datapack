# Executor: Any entity, typically a player
# Position: Entity's current position

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:score_chunk_coordinates] Scoring chunk coordinates for "},{"selector":"@s"}]


# Score chunk coordinates as 1/16th of the block coordinates.
# Used for porcelain anchor forceloading
execute store result score @s chunk_x run data get entity @s Pos[0] 0.0625
execute store result score @s chunk_z run data get entity @s Pos[2] 0.0625