# Executor: Player who used an allay bottle on a block
# Position: The player

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/advancement_reward/allay_bottle_used_on_block] Player used allay bottle on block"}]


# Revoke trigger
advancement revoke @s only shroomhearth:allay_bottle/allay_bottle_used_on_block

# Tag player
tag @s add used_allay_bottle

# Prepare the allay
execute as @n[type=minecraft:allay,tag=unbottled_allay] at @s run function shroomhearth:allay_bottle/prepare_allay

# Untag player
tag @s remove used_allay_bottle