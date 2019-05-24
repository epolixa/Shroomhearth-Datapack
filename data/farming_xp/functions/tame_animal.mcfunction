# summon experience orb
execute as @s[sores={rng=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute as @s[sores={rng=2}] run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute as @s[sores={rng=3}] run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute as @s[sores={rng=4}] run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute as @s[sores={rng=5}] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute as @s[sores={rng=6}] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute as @s[sores={rng=7}] run summon minecraft:experience_orb ~ ~ ~ {Value:5}
execute as @s[sores={rng=8}] run summon minecraft:experience_orb ~ ~ ~ {Value:6}
execute as @s[sores={rng=9}] run summon minecraft:experience_orb ~ ~ ~ {Value:7}

# revoke trigger
advancement revoke @s only farming_xp:tame_animal