# Executor: a player that hit a block with Harmonic Strength
# Position: the player

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/harmonic_strength/post_attack_attacker] "},{"selector":"@s"},{"text":" attacked with Harmonic Strength"}]


# Update duration score for players with positive player group
execute as @s[scores={player_group=1..}] run function shroomhearth:stories/enchantment/harmonic_strength/apply