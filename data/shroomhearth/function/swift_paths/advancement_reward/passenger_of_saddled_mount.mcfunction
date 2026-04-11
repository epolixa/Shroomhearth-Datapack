# Executor: A Player who is a passenger of a saddled mount mob
# Position: The Player

tellraw @a[tag=debug_swift_paths] [{"text":"[shroomhearth:swift_paths/passenger_of_saddled_mount] "},{"selector":"@s"},{"text":" is a passenger of a saddled mount"}]


# Add or remove speed attribute modifier based on whether the mount is stepping on a swift path
execute on vehicle if predicate shroomhearth:swift_paths/movement_affected_by_swift_path run function shroomhearth:swift_paths/add_attribute_modifier
execute on vehicle unless predicate shroomhearth:swift_paths/movement_affected_by_swift_path run function shroomhearth:swift_paths/remove_attribute_modifier

# Revoke trigger
advancement revoke @s only shroomhearth:swift_paths/passenger_of_saddled_mount