################################################################
# Flags
# controls flags and trackers (mostly to reset them)
################################################################


# playerSneak - reset to 0 every tick while sneaking
execute as @a[scores={playerSneak=1..}] at @s run scoreboard players set @s playerSneak 0

# rng - reset to 0 after 9 ticks
execute as @a[scores={rng=9..}] at @s run scoreboard players set @s rng 0

# viewPitch
execute as @a store result score @s viewPitch run data get entity @s Rotation[1]

# entityTicks
scoreboard players add @e entityTicks 1
