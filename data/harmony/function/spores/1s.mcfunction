# Executor: Server
# Position: Root

tellraw @a[tag=debug_harmony] "[harmony:spores/1s] running..."


# Process active spores

# Armor

# Burn Damage Resistance

# Clear Weather

# Double XP

# Easy Difficulty

# Fall Damage Resistance

# Haste

# Insomnia

# Jump Boost

# Keep Inventory

# Max Health

# Respiration

# Speed
execute if score spores_of_speed shroomhearth matches 1.. run function harmony:spores/speed/1s

# Strength
execute if score spores_of_strength shroomhearth matches 1.. run function harmony:spores/strength/1s

# Uptick



# Remove attribute modifiers for inactive spores

# Armor

# Burn Damage Resistance

# Fall Damage Resistance

# Haste

# Jump Boost

# Respiration

# Speed
execute unless score spores_of_speed shroomhearth matches 1.. as @a[tag=spores_of_speed] run function harmony:spores/speed/remove

# Strength
execute unless score spores_of_strength shroomhearth matches 1.. as @a[tag=spores_of_strength] run function harmony:spores/strength/remove
