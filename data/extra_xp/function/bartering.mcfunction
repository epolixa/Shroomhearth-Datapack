# set random
execute store result score random shroomhearth run random value 0..3

# summon experience orb
execute if score random shroomhearth matches 0 at @n[type=minecraft:piglin] run summon minecraft:experience_orb ~ ~ ~ {Value:8}
execute if score random shroomhearth matches 1 at @n[type=minecraft:piglin] run summon minecraft:experience_orb ~ ~ ~ {Value:9}
execute if score random shroomhearth matches 2 at @n[type=minecraft:piglin] run summon minecraft:experience_orb ~ ~ ~ {Value:10}
execute if score random shroomhearth matches 3 at @n[type=minecraft:piglin] run summon minecraft:experience_orb ~ ~ ~ {Value:11}

# revoke trigger
advancement revoke @s only extra_xp:bartering