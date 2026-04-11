# Executor: A Player or mount mob that is not sprinting or stepping on a swift path
# Position: The Player or mount mob

tellraw @a[tag=debug_swift_paths] [{"text":"[shroomhearth:swift_paths/remove_attribute_modifier] removing movement speed attribute modifier from "},{"selector":"@s"}]


# Add speed attribute modifier equivalent to speed 1
attribute @s minecraft:movement_speed modifier remove shroomhearth:swift_paths