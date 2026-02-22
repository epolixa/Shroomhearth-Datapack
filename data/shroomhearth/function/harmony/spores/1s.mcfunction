# Executor: Server
# Position: Spawn

#tellraw @a[tag=debug_harmony] "[shroomhearth:harmony/spores/1s] running..."


# Process active spores

# Armor
execute if score spores_of_armor shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/armor/1s

# Burn Damage Resistance

# Clear Weather

# Ease
execute if score spores_of_ease shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/ease/1s

# Egg Hunt
execute if score spores_of_egg_hunt shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/egg_hunt/1s

# Experience
execute if score spores_of_experience shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/experience/1s

# Fall Damage Resistance

# Haste
execute if score spores_of_haste shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/haste/1s

# Health
execute if score spores_of_health shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/health/1s

# Insomnia
execute if score spores_of_insomnia shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/insomnia/1s

# Leaping
execute if score spores_of_leaping shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/leaping/1s

# Keeping
execute if score spores_of_keeping shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/keeping/1s

# Respiration

# Speed
execute if score spores_of_swiftness shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/swiftness/1s

# Strength
execute if score spores_of_strength shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/strength/1s

# Uptick

# Pause Day/Night Cycle



# Remove attribute modifiers for inactive spores

# Armor
execute unless score spores_of_armor shroomhearth.harmony matches 1.. as @a[tag=spores_of_armor] run function shroomhearth:harmony/spores/armor/remove

# Burn Damage Resistance

# Fall Damage Resistance

# Haste
execute unless score spores_of_haste shroomhearth.harmony matches 1.. as @a[tag=spores_of_haste] run function shroomhearth:harmony/spores/haste/remove

# Health
execute unless score spores_of_health shroomhearth.harmony matches 1.. as @a[tag=spores_of_health] run function shroomhearth:harmony/spores/health/remove

# Leaping
execute unless score spores_of_leaping shroomhearth.harmony matches 1.. as @a[tag=spores_of_leaping] run function shroomhearth:harmony/spores/leaping/remove

# Respiration

# Speed
execute unless score spores_of_swiftness shroomhearth.harmony matches 1.. as @a[tag=spores_of_swiftness] run function shroomhearth:harmony/spores/swiftness/remove

# Strength
execute unless score spores_of_strength shroomhearth.harmony matches 1.. as @a[tag=spores_of_strength] run function shroomhearth:harmony/spores/strength/remove