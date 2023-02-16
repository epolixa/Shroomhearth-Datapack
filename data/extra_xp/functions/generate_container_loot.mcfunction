# revoke trigger
advancement revoke @s only extra_xp:generate_container_loot

# summon experience orb
summon minecraft:experience_orb ^ ^1.5 ^1 {Value:10}

# play sound effect
playsound minecraft:block.chest.locked block @a ^ ^1.5 ^1 1 1.5

# play particle effect
particle minecraft:happy_villager ^ ^1.5 ^1 0.3 0.1 0.3 1 3 force

# grant harmony to players within presence range
execute as @a[distance=..160] at @s run scoreboard players add @a[distance=0.1..160] harmony 1