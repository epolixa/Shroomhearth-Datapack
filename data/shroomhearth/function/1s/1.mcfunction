#tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/1] Executing function set 1"}]


# Process echoes entities and track players
function shroomhearth:echoes/pulse

# Re-schedule
schedule function shroomhearth:1s/1 1s