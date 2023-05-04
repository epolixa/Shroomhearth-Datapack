# Flag for using the Porcelain item
scoreboard objectives add usePorcelain dummy

# Identifier to match players with their anchors
# in the future we should try to match anchor by player UUID
scoreboard objectives add porcelainID dummy

# Next ID to use for a new anchor
scoreboard players set nextPorcelainID shroomhearth 0

# Check if player has porcelain while in the porcelain
scoreboard objectives add hasPorcelain dummy

# Identifier for dimension porcelain was used in
# 0  = overworld (default)
# -1 = the_nether
# 1  = the_end
scoreboard objectives add porcelainDimID dummy

# Track nearby hostile mobs and prevent porcelain usage
scoreboard objectives add nearbyMonster dummy