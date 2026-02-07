# Executor: A player who has changed their inventory
# Position: The player entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:advancement_reward/inventory_changed_drop] "},{"selector":"@s"},{"text":" dropped an item"}]


# Play sound for dropping an item
execute at @s run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.25 0.75

# Reset score
scoreboard players set @s drop 0

# Revoke advancement
advancement revoke @s only shroomhearth:inventory_changed_drop