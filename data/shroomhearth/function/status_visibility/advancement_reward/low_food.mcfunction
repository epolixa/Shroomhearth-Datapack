# Executor: Player with low food level
# Position: the Player

tellraw @a[tag=debug_status_visibility] [{"text":"[shroomhearth:status_visibility/advancement_reward/low_food] "},{"selector":"@s"},{"text":" has low food"}]


# Occasionally play hungry sounds
execute if predicate shroomhearth:status_visibility/low_food_sound_chance run playsound minecraft:entity.strider.ambient player @a ~ ~ ~ 0.1 0.5

# Revoke trigger
advancement revoke @s only shroomhearth:status_visibility/low_food