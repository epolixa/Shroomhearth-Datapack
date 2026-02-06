# Executor: Player who tamed a mob
# Position: the Player

tellraw @a[tag=debug_extra_xp] [{"text":"[shroomhearth:extra_xp/advancement_reward/tame_animal] "},{"selector":"@s"},{"text":" tamed "},{"selector":"@n[type=#shroomhearth:tamable]"}]


# Summon an experience orb with a random value between 1 and 7 at the position of the tamed mob
execute at @n[type=#shroomhearth:tamable] summon minecraft:experience_orb store result entity @s Value short 1 run random value 1..7

# Revoke trigger
advancement revoke @s only shroomhearth:extra_xp/tame_animal