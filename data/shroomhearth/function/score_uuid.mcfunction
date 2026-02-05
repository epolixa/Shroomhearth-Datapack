# Executor: any entity, typically a player
# Position: inherit

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:score_uuid] Scoring UUID for "},{"selector":"@s"}]


# Capture entity UUID components to scores
# Useful for matching entities to other linked entities, like a player and their echo horn
execute store result score @s uuid_1 run data get entity @s UUID[0]
execute store result score @s uuid_2 run data get entity @s UUID[1]
execute store result score @s uuid_3 run data get entity @s UUID[2]
execute store result score @s uuid_4 run data get entity @s UUID[3]