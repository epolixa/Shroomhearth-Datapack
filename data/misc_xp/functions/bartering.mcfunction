# summon experience orb
execute as @s[scores={rng=1}] at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:8}
execute as @s[scores={rng=2}] at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:8}
execute as @s[scores={rng=3}] at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:9}
execute as @s[scores={rng=4}] at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:9}
execute as @s[scores={rng=5}] at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:10}
execute as @s[scores={rng=6}] at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:10}
execute as @s[scores={rng=7}] at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:10}
execute as @s[scores={rng=8}] at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:11}
execute as @s[scores={rng=9}] at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:11}

# revoke trigger
advancement revoke @s only misc_xp:bartering