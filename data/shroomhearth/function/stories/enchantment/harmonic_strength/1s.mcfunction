# Executor: an entity with the harmonic strength tag
# Position: the entity

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/harmonic_strength/1s] "},{"selector":"@s"},{"text":" updating Harmonic Strength duration"}]


# Update timer score
scoreboard players remove @s harmonic_strength 1

# Release if the timer has expired
execute if score @s harmonic_strength matches ..0 run function shroomhearth:stories/enchantment/harmonic_strength/remove