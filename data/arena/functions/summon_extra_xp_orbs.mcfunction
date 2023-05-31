# runs recursively from the context of a player that just died in an arena

# summon various xp orbs with different values depending on how many points remain
# spawnable values align with vanilla naturally spawned orb values
# https://minecraft.fandom.com/wiki/Experience#Experience_orbs

execute if score @s arenaXpPoints matches 2477.. run summon minecraft:experience_orb ~ ~ ~ {Value:2477}
execute if score @s arenaXpPoints matches 2477.. run scoreboard players remove @s arenaXpPoints 2477

execute if score @s arenaXpPoints matches 1237..2476 run summon minecraft:experience_orb ~ ~ ~ {Value:1237}
execute if score @s arenaXpPoints matches 1237..2476 run scoreboard players remove @s arenaXpPoints 1237

execute if score @s arenaXpPoints matches 617..1236 run summon minecraft:experience_orb ~ ~ ~ {Value:617}
execute if score @s arenaXpPoints matches 617..1236 run scoreboard players remove @s arenaXpPoints 617

execute if score @s arenaXpPoints matches 307..616 run summon minecraft:experience_orb ~ ~ ~ {Value:307}
execute if score @s arenaXpPoints matches 307..616 run scoreboard players remove @s arenaXpPoints 307

execute if score @s arenaXpPoints matches 149..306 run summon minecraft:experience_orb ~ ~ ~ {Value:149}
execute if score @s arenaXpPoints matches 149..306 run scoreboard players remove @s arenaXpPoints 149

execute if score @s arenaXpPoints matches 73..148 run summon minecraft:experience_orb ~ ~ ~ {Value:73}
execute if score @s arenaXpPoints matches 73..148 run scoreboard players remove @s arenaXpPoints 73

execute if score @s arenaXpPoints matches 37..72 run summon minecraft:experience_orb ~ ~ ~ {Value:37}
execute if score @s arenaXpPoints matches 37..72 run scoreboard players remove @s arenaXpPoints 37

execute if score @s arenaXpPoints matches 17..36 run summon minecraft:experience_orb ~ ~ ~ {Value:17}
execute if score @s arenaXpPoints matches 17..36 run scoreboard players remove @s arenaXpPoints 17

execute if score @s arenaXpPoints matches 7..16 run summon minecraft:experience_orb ~ ~ ~ {Value:7}
execute if score @s arenaXpPoints matches 7..16 run scoreboard players remove @s arenaXpPoints 7

execute if score @s arenaXpPoints matches 3..6 run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute if score @s arenaXpPoints matches 3..6 run scoreboard players remove @s arenaXpPoints 3

execute if score @s arenaXpPoints matches 1..2 run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score @s arenaXpPoints matches 1..2 run scoreboard players remove @s arenaXpPoints 1

# if arenaXpPoints is still positive, run again
execute if score @s arenaXpPoints matches 1.. run function arena:summon_extra_xp_orbs