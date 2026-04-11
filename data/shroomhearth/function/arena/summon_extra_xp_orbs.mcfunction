# runs recursively from the context of a player that just died in an arena

# summon various xp orbs with different values depending on how many points remain
# spawnable values align with vanilla naturally spawned orb values
# https://minecraft.fandom.com/wiki/Experience#Experience_orbs

execute if score @s arena_xp_points matches 2477.. run summon minecraft:experience_orb ~ ~ ~ {Value:2477}
execute if score @s arena_xp_points matches 2477.. run scoreboard players remove @s arena_xp_points 2477

execute if score @s arena_xp_points matches 1237..2476 run summon minecraft:experience_orb ~ ~ ~ {Value:1237}
execute if score @s arena_xp_points matches 1237..2476 run scoreboard players remove @s arena_xp_points 1237

execute if score @s arena_xp_points matches 617..1236 run summon minecraft:experience_orb ~ ~ ~ {Value:617}
execute if score @s arena_xp_points matches 617..1236 run scoreboard players remove @s arena_xp_points 617

execute if score @s arena_xp_points matches 307..616 run summon minecraft:experience_orb ~ ~ ~ {Value:307}
execute if score @s arena_xp_points matches 307..616 run scoreboard players remove @s arena_xp_points 307

execute if score @s arena_xp_points matches 149..306 run summon minecraft:experience_orb ~ ~ ~ {Value:149}
execute if score @s arena_xp_points matches 149..306 run scoreboard players remove @s arena_xp_points 149

execute if score @s arena_xp_points matches 73..148 run summon minecraft:experience_orb ~ ~ ~ {Value:73}
execute if score @s arena_xp_points matches 73..148 run scoreboard players remove @s arena_xp_points 73

execute if score @s arena_xp_points matches 37..72 run summon minecraft:experience_orb ~ ~ ~ {Value:37}
execute if score @s arena_xp_points matches 37..72 run scoreboard players remove @s arena_xp_points 37

execute if score @s arena_xp_points matches 17..36 run summon minecraft:experience_orb ~ ~ ~ {Value:17}
execute if score @s arena_xp_points matches 17..36 run scoreboard players remove @s arena_xp_points 17

execute if score @s arena_xp_points matches 7..16 run summon minecraft:experience_orb ~ ~ ~ {Value:7}
execute if score @s arena_xp_points matches 7..16 run scoreboard players remove @s arena_xp_points 7

execute if score @s arena_xp_points matches 3..6 run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute if score @s arena_xp_points matches 3..6 run scoreboard players remove @s arena_xp_points 3

execute if score @s arena_xp_points matches 1..2 run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score @s arena_xp_points matches 1..2 run scoreboard players remove @s arena_xp_points 1

# if arena_xp_points is still positive, run again
execute if score @s arena_xp_points matches 1.. run function shroomhearth:arena/summon_extra_xp_orbs