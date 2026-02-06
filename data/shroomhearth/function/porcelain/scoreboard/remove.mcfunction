# Flag for using the Porcelain item
scoreboard objectives remove used_porcelain

# Identifier to match players with their anchors
# in the future we should try to match anchor by player UUID
scoreboard objectives remove porcelain_id

# Check if player has porcelain while in the porcelain
scoreboard objectives remove has_porcelain

# Identifier for dimension porcelain was used in
# 0  = overworld (default)
# -1 = the_nether
# 1  = the_end
scoreboard objectives remove porcelain_dimension_id

# Track nearby porcelain anchors and prevent porcelain usage
scoreboard objectives remove nearby_porcelain

# Track nearby hostile mobs and prevent porcelain usage
scoreboard objectives remove nearby_monster


# Objective for fake player globals
scoreboard objectives remove shroomhearth.porcelain

# Next ID to use for a new anchor
scoreboard players reset next_porcelain_id shroomhearth.porcelain