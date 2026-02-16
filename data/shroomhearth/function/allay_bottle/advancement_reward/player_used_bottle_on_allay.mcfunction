# Executor: A player who just used a bottle on an allay and spawned a new allay bottle
# Position: the player

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/advancement_reward/player_used_bottle_on_allay] Player used glass bottle on allay"}]


# Revoke trigger
advancement revoke @s only shroomhearth:allay_bottle/player_used_bottle_on_allay

# Vanish the nearest allay holding a glass bottle unless the player is sneaking
execute unless entity @s[predicate=shroomhearth:is_sneaking] positioned ^ ^ ^1 as @n[type=minecraft:allay,nbt={equipment:{mainhand:{id:"minecraft:glass_bottle",count:1}}}] at @s run function shroomhearth:allay_bottle/vanish_allay
