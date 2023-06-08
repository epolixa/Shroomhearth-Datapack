# Runs from context of a player who does not have an echo marker assigned to them

tellraw @a[tag=debugger] [{"text":"Creating new Echo Marker for Player "},{"selector":"@s"}]

# Re-capture player UUID
function shroomhearth:capture_uuid

# Summon new echo marker and initialize it
execute summon minecraft:marker run function echoes:initialize_echo_marker

# Flag player as having been assigned an echo marker
tag @s add echo_marked