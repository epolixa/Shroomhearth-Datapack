# summon experience orb
execute as @s[scores={rng=1}] at @e[type=!minecraft:player,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute as @s[scores={rng=2}] at @e[type=!minecraft:player,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute as @s[scores={rng=3}] at @e[type=!minecraft:player,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute as @s[scores={rng=4}] at @e[type=!minecraft:player,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute as @s[scores={rng=5}] at @e[type=!minecraft:player,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute as @s[scores={rng=6}] at @e[type=!minecraft:player,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute as @s[scores={rng=7}] at @e[type=!minecraft:player,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:5}
execute as @s[scores={rng=8}] at @e[type=!minecraft:player,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:6}
execute as @s[scores={rng=9}] at @e[type=!minecraft:player,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:7}

# revoke trigger
advancement revoke @s only misc_xp:tame_animal