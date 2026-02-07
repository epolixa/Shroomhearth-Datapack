# Executor: Server
# Position: Spawn


# Reset Age property on named item entities
execute as @e[type=minecraft:item] if data entity @s Item.components."minecraft:custom_name" run function shroomhearth:reset_item_age

# Re-schedule
schedule function shroomhearth:8s 8s