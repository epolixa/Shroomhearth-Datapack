# Executor: a player that hit a block with Harmonic Haste
# Position: the player

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/harmonic_haste/hit_block] "},{"selector":"@s"},{"text":" hit a block with Harmonic Haste"}]


# Play activate sound
#playsound minecraft:block.note_block.pling neutral @a ~ ~ ~ 1 1.5

# Update duration score for players with positive player group
execute as @s[scores={player_group=1..}] run function shroomhearth:stories/enchantment/harmonic_haste/apply


