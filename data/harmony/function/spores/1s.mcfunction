# Executor: Server
# Position: Root

tellraw @a[tag=debug_harmony] "[harmony:spores/1s] running..."


# Process active spores

# Armor
execute if score spores_of_armor shroomhearth.harmony matches 1.. run function harmony:spores/armor/1s

# Burn Damage Resistance

# Clear Weather

# Ease
execute if score spores_of_ease shroomhearth.harmony matches 1.. run function harmony:spores/ease/1s

# Experience
execute if score spores_of_experience shroomhearth.harmony matches 1.. run function harmony:spores/experience/1s

# Fall Damage Resistance

# Haste
execute if score spores_of_haste shroomhearth.harmony matches 1.. run function harmony:spores/haste/1s

# Health
execute if score spores_of_health shroomhearth.harmony matches 1.. run function harmony:spores/health/1s

# Insomnia
execute if score spores_of_insomnia shroomhearth.harmony matches 1.. run function harmony:spores/insomnia/1s

# Leaping
execute if score spores_of_leaping shroomhearth.harmony matches 1.. run function harmony:spores/leaping/1s

# Keeping
execute if score spores_of_keeping shroomhearth.harmony matches 1.. run function harmony:spores/keeping/1s

# Respiration

# Speed
execute if score spores_of_swiftness shroomhearth.harmony matches 1.. run function harmony:spores/swiftness/1s

# Strength
execute if score spores_of_strength shroomhearth.harmony matches 1.. run function harmony:spores/strength/1s

# Uptick

# Pause Day/Night Cycle



# Remove attribute modifiers for inactive spores

# Armor
execute unless score spores_of_armor shroomhearth.harmony matches 1.. as @a[tag=spores_of_armor] run function harmony:spores/armor/remove

# Burn Damage Resistance

# Fall Damage Resistance

# Haste
execute unless score spores_of_haste shroomhearth.harmony matches 1.. as @a[tag=spores_of_haste] run function harmony:spores/haste/remove

# Health
execute unless score spores_of_health shroomhearth.harmony matches 1.. as @a[tag=spores_of_health] run function harmony:spores/health/remove

# Leaping
execute unless score spores_of_leaping shroomhearth.harmony matches 1.. as @a[tag=spores_of_leaping] run function harmony:spores/leaping/remove

# Respiration

# Speed
execute unless score spores_of_swiftness shroomhearth.harmony matches 1.. as @a[tag=spores_of_swiftness] run function harmony:spores/swiftness/remove

# Strength
execute unless score spores_of_strength shroomhearth.harmony matches 1.. as @a[tag=spores_of_strength] run function harmony:spores/strength/remove