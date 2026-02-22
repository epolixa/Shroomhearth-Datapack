# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/egg_hunt/1s] processing "},{"translate":"harmony.spores.egg_hunt"}]


# Check all rabbits for easter egg
execute as @e[type=minecraft:rabbit,tag=!dropped_egg,nbt=!{MoreCarrotTicks:0},limit=1,sort=random] at @s run function shroomhearth:harmony/spores/egg_hunt/drop_painted_egg

# Reduce timer for Spores of Egg Hunt
scoreboard players remove spores_of_egg_hunt shroomhearth.harmony 1

# Update boss bar for Spores of Egg Hunt duration
execute store result bossbar shroomhearth:spores_of_egg_hunt value run scoreboard players get spores_of_egg_hunt shroomhearth.harmony
bossbar set shroomhearth:spores_of_egg_hunt players @a[scores={show_timer_bars=1}]

# Deactivate Spores of Egg Hunt if score reached zero
execute if score spores_of_egg_hunt shroomhearth.harmony matches ..0 run function shroomhearth:harmony/spores/egg_hunt/deactivate

# Chance to play particle effect around players
execute as @a at @s run execute if predicate shroomhearth:harmony/spores_particle_chance run particle minecraft:dust{color:[0.63, 0.45, 0.3], scale: 1} ~ ~1 ~ 10 10 10 0.01 1 force
