# revoke trigger
advancement revoke @s only extra_xp:bartering

# summon experience orb with a random value between 8 and 11 at the position of the piglin
execute at @n[type=minecraft:piglin] summon minecraft:experience_orb store result entity @s Value short 1 run random value 8..11