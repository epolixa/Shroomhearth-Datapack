# Executor: Player who bartered with a piglin
# Position: the Player

tellraw @a[tag=debug_extra_xp] [{"text":"[shroomhearth:extra_xp/advancement_reward/bartering] "},{"selector":"@s"},{"text":" bartered with a piglin"}]


# Summon experience orb with a random value between 8 and 11 at the position of the piglin
execute at @n[type=minecraft:piglin] summon minecraft:experience_orb store result entity @s Value short 1 run random value 8..11

# Revoke trigger
advancement revoke @s only shroomhearth:extra_xp/bartering