# summon experience orb
execute as @s[scores={rng=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute as @s[scores={rng=2}] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute as @s[scores={rng=3}] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute as @s[scores={rng=4}] run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute as @s[scores={rng=5}] run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute as @s[scores={rng=6}] run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute as @s[scores={rng=7}] run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute as @s[scores={rng=8}] run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute as @s[scores={rng=9}] run summon minecraft:experience_orb ~ ~ ~ {Value:3}

# revoke trigger
advancement revoke @s only misc_xp:harvest_bee