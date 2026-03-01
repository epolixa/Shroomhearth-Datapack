# Executor: A Player who is entering or exiting The Porcelain
# Position: The Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/travel_effects] Playing travel effects for "},{"selector":"@s"}]


# Give the Player Blindness for a brief moment to mask the teleportation
effect give @s minecraft:blindness 1 0 true

# Give the Player Slow Falling if they used the Porcelain in midair
execute unless predicate shroomhearth:is_on_ground run effect give @s minecraft:slow_falling 1 0 true

# Sound effects
playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 1 0.5 1