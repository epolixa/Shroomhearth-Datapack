# Executor: Typically the harmony cap marker, but can be ad-hoc
# Position: Inherited from executor

tellraw @a[tag=debug_harmony] "[shroomhearth:harmony/harmony_cap/summon_harmony_cap] summoning Harmony Cap"


# Summon new harmony cap interaction entity
summon minecraft:interaction ~ ~ ~ {Tags: ["harmony_cap","harmony_cap_interaction","new_harmony_cap_interaction"], height: 0.1875, width: 0.5}

# Initialize the new harmony cap interaction entity
execute as @n[tag=new_harmony_cap_interaction] at @s run function shroomhearth:harmony/harmony_cap/initialize_interaction