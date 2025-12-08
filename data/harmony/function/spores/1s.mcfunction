# Executor: Server
# Position: Root

tellraw @a[tag=debug_harmony] "[harmony:spores/1s] running..."


# Process active spores...

# Armor

# Clear Weather

# Double XP

# Easy Difficulty

# Haste

# Insomnia

# Jump Boost

# Keep Inventory

# Respiration

# Speed

# Strength
execute if score strength_spores shroomhearth matches 1.. run function harmony:spores/strength/1s_active
execute unless score strength_spores shroomhearth matches 1.. run function harmony:spores/strength/1s_inactive

# Uptick


# Reduce burn time

# Reduce fall damage

# Max Health

