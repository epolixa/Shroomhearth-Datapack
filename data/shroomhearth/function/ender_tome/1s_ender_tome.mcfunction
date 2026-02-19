# Executor: Any active ender tome interaction or ominous item spawner entity
# Position: The entity

tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/1s_ender_tome] Processing Ender Tome"}]


# Tick age of the Ender Tome
scoreboard players add @s itemAge 1

# Play particle effects to indicate age
particle minecraft:witch ~ ~ ~ 0.1 0 0.1 0.001 3

# Check if the Ender Tome has expired
execute if score @s itemAge matches 5.. run function shroomhearth:ender_tome/deactivate_ender_tome