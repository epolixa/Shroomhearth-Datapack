# Executor: Server 
# Position: Root

tellraw @a[tag=debug_harmony] "[harmony:spores/strength/1s_inactive] checking lingering Strength Spores"


# Remove Strength Spores from any players who still have it
execute as @a[tag=strength_spores] run function harmony:spores/strength/remove