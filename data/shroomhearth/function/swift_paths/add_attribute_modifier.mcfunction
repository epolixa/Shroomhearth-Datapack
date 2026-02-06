# Executor: A Player or mount mob that is sprinting or stepping on a swift path
# Position: The Player or mount mob

tellraw @a[tag=debug_swift_paths] [{"text":"[shroomhearth:swift_paths/add_attribute_modifier] adding movement speed attribute modifier to "},{"selector":"@s"}]


# Add speed attribute modifier equivalent to speed 1
attribute @s minecraft:movement_speed modifier add shroomhearth:swift_paths 0.2 add_multiplied_base