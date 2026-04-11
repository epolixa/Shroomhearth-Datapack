# Executor: Player who opened a chest and generated loot from it
# Position: the Player

tellraw @a[tag=debug_extra_xp] [{"text":"[shroomhearth:extra_xp/advancement_reward/generate_container_loot] "},{"selector":"@s"},{"text":" generated loot from a container"}]


# Summon experience orb
execute anchored eyes run summon minecraft:experience_orb ^ ^ ^1 {Value:10}

# Play sound effect
execute anchored eyes run playsound minecraft:block.chest.locked block @a ^ ^ ^1 1 1.5

# Revoke trigger
advancement revoke @s only shroomhearth:extra_xp/generate_container_loot