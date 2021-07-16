# usePorcelain - flag for using Porcelain Key
scoreboard objectives remove usePorcelain
scoreboard objectives add usePorcelain minecraft.used:minecraft.warped_fungus_on_a_stick

# porcelainID - identifier to match players with their anchors
scoreboard objectives remove porcelainID
scoreboard objectives add porcelainID dummy

# nextPorcelainID - next ID to use for new anchor
scoreboard objectives remove nextPorcelainID
scoreboard objectives add nextPorcelainID dummy
scoreboard players set bityard nextPorcelainID 0

# hasPorcelain - check if player has porcelain while in the porcelain
scoreboard objectives remove hasPorcelain
scoreboard objectives add hasPorcelain dummy

# porcelainDimID - identifier for dimension porcelain was used in
# 0  = overworld (default)
# -1 = the_nether
# 1  = the_end
scoreboard objectives remove porcelainDimID
scoreboard objectives add porcelainDimID dummy

# nearbyMonster - track nearby hostile mobs and prevent porcelain usage
scoreboard objectives remove nearbyMonster
scoreboard objectives add nearbyMonster dummy