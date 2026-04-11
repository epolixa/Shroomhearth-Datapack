# Executor: A Player who is not sprinting on a swift path
# Position: The Player

tellraw @a[tag=debug_swift_paths] [{"text":"[shroomhearth:swift_paths/not_sprinting_on_swift_path] "},{"selector":"@s"},{"text":" is not sprinting on a swift path"}]


# Remove speed attribute modifier
function shroomhearth:swift_paths/remove_attribute_modifier

# Revoke opposing trigger advancement
advancement revoke @s only shroomhearth:swift_paths/sprinting_on_swift_path