# Flag for using the Porcelain item
scoreboard objectives remove usePorcelain

# Identifier to match players with their anchors
# in the future we should try to match anchor by player UUID
scoreboard objectives remove porcelainID

# Next ID to use for a new anchor
scoreboard players reset nextPorcelainID shroomhearth

# Check if player has porcelain while in the porcelain
scoreboard objectives remove hasPorcelain

# Identifier for dimension porcelain was used in
# 0  = overworld (default)
# -1 = the_nether
# 1  = the_end
scoreboard objectives remove porcelainDimID

# Track nearby hostile mobs and prevent porcelain usage
scoreboard objectives remove nearbyMonster