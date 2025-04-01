# Context: A player that has just been killed by another player in an Arena

# store player's total xp points
function shroomhearth:xp/calculate_total
scoreboard players operation @s arenaXpPoints = xpTotal shroomhearth
# recursively summon xp orbs of varying points until arenaXpPoints reaches 0
function arena:summon_extra_xp_orbs