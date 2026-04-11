# Executor: A player who just used a bottle on an allay and spawned a new allay bottle
# Position: the player

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/find_allay_bottle_from_allay] Player used bottle on allay, looking for nearby allay bottle item entities"}]


# Execute functions on matching allay bottle item entities
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{shroomhearth_id:"allay_bottle_from_allay"}}}}] at @s run function shroomhearth:allay_bottle/prepare_allay_bottle