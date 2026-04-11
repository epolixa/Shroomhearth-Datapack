# Executor: Player who cured a zombie villager
# Position: the Player

tellraw @a[tag=debug_extra_xp] [{"text":"[shroomhearth:extra_xp/advancement_reward/cured_zombie_villager] "},{"selector":"@s"},{"text":" cured a zombie villager"}]


# Summon experience orb at the nearest villager
execute at @n[type=minecraft:zombie_villager] run summon minecraft:experience_orb ~ ~1 ~ {Value:10}

# Revoke trigger
advancement revoke @s only shroomhearth:extra_xp/cured_zombie_villager