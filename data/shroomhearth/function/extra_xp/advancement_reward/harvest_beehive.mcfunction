# Executor: Player who harvested a beehive
# Position: the Player

tellraw @a[tag=debug_extra_xp] [{"text":"[shroomhearth:extra_xp/advancement_reward/harvest_beehive] "},{"selector":"@s"},{"text":" harvested a beehive"}]


# Summon an experience orb with a random value between 1 and 3 one block in front of the player
execute anchored eyes positioned ^ ^ ^1 summon minecraft:experience_orb store result entity @s Value short 1 run random value 1..3

# Revoke trigger
advancement revoke @s only shroomhearth:extra_xp/harvest_beehive