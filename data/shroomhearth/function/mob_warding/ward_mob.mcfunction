# Executor: A Wardable mob
# Position: The mob

tellraw @a[tag=debug_mob_warding] [{"text":"[shroomhearth:mob_warding/ward_mob] Warding "},{"selector":"@s"}]


# play particles on nearby mob
particle minecraft:dragon_breath ~ ~0.5 ~ 0.2 0.3 0.2 0.01 4

# play crystal effects
execute at @n[type=minecraft:end_crystal,nbt={ShowBottom:0b}] as @s run function shroomhearth:mob_warding/crystal_ward

# set deathtime and other data on mob
data merge entity @s {DeathTime:19, DeathLootTable:"minecraft:empty", Silent:true}

# this kills the mob instantly
kill @s