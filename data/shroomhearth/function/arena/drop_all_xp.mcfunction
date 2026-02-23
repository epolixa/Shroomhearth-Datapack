# Context: A player that has just been killed by another player in an Arena

# store player's total xp points
function shroomhearth:arena/xp/calculate_total
scoreboard players operation @s arena_xp_points = xp_total shroomhearth.arena
# recursively summon xp orbs of varying points until arena_xp_points reaches 0
function shroomhearth:arena/summon_extra_xp_orbs