# Runs from context of a player who does not have an echo tracker assigned to them

tellraw @a[tag=debug_echoes] [{"text":"Creating new Echo Tracker for Player "},{"selector":"@s"}]

# Re-capture player UUID
function shroomhearth:capture_uuid

# Summon new echo marker and initialize it
execute summon minecraft:marker run function echoes:initialize_echo_tracker

# Flag player as having been assigned an echo tracker
tag @s add echo_tracking