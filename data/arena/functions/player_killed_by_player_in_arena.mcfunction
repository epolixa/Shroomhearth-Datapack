# revoke trigger
advancement revoke @s only arena:player_killed_by_player_in_arena

# track deaths
scoreboard players add @s arenaDeaths 1

# play particles
particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 8

# generate additional XP
#summon minecraft:experience_orb ~ ~ ~ {Value:10}
# store player's total xp points
function shroomhearth:xp/calculate_total
scoreboard players operation @s arenaXpPoints = xpTotal shroomhearth
# recursively summon xp orbs of varying points until arenaXpPoints reaches 0
function arena:summon_extra_xp_orbs


# grant harmony
scoreboard players add @s harmony 1