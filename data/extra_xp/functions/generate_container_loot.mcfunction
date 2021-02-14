# summon experience orb
summon minecraft:experience_orb ~ ~ ~ {Value:10}

# play sound effect
playsound minecraft:block.chest.locked block @a ~ ~ ~ 1 1.5

# play particle effect
particle minecraft:happy_villager ^ ^1.5 ^1 0.3 0.1 0.3 1 3 force

# revoke trigger
advancement revoke @s only extra_xp:generate_container_loot