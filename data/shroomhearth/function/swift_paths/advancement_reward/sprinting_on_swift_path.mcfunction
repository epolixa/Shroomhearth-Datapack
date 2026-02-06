# Executor: A Player who is sprinting on a swift path
# Position: The Player

tellraw @a[tag=debug_swift_paths] [{"text":"[shroomhearth:swift_paths/sprinting_on_swift_path] "},{"selector":"@s"},{"text":" is sprinting on a swift path"}]


# Give speed attribute modifier equivalent to speed 1
function shroomhearth:swift_paths/add_attribute_modifier

# Revoke opposing trigger advancement
advancement revoke @s only shroomhearth:swift_paths/not_sprinting_on_swift_path