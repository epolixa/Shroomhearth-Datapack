# Flag for using the Porcelain item
scoreboard objectives add used_porcelain dummy

# Identifier to match players with their anchors
# in the future we should try to match anchor by player UUID
scoreboard objectives add porcelain_id dummy

# Check if player has porcelain while in the porcelain
scoreboard objectives add has_porcelain dummy

# Identifier for dimension porcelain was used in
# 0  = overworld (default)
# -1 = the_nether
# 1  = the_end
scoreboard objectives add porcelain_dimension_id dummy

# Track nearby porcelain anchors and prevent porcelain usage
scoreboard objectives add nearby_porcelain dummy

# Track nearby hostile mobs and prevent porcelain usage
scoreboard objectives add nearby_monster dummy


# Objective for fake player globals
scoreboard objectives add shroomhearth.porcelain dummy

# Next ID to use for a new anchor
scoreboard players set next_porcelain_id shroomhearth.porcelain 0