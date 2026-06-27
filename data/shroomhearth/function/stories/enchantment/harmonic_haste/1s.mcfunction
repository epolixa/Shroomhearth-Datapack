# Executor: an entity with the harmonic haste tag
# Position: the entity

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/harmonic_haste/1s] "},{"selector":"@s"},{"text":" updating Harmonic Haste duration"}]


# Play particles
#particle minecraft: ~ ~1 ~ 0 0 0 0 1

# Update timer score
scoreboard players remove @s harmonic_haste 1

# Release if the timer has expired
execute if score @s harmonic_haste matches ..0 run function shroomhearth:stories/enchantment/harmonic_haste/release