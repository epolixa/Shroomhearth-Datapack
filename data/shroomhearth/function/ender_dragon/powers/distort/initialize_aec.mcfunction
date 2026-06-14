# Executes from the context of an area effect cloud that was just summoned by the ender dragon's distort power

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/distort/initialize_aec] Initializing summoned "},{"selector":"@s"}]


# Tag self
tag @s add dragon_distortion

# Join the ender dragon team so kill message has color
team join ender_dragon @s

# Initialize potion contents object with default values
data modify entity @s potion_contents set value {custom_effects:[]}
data modify entity @s Duration set value 600
data modify entity @s DurationOnUse set value 0
data modify entity @s Radius set value 3.0f
data modify entity @s RadiusOnUse set value 0
data modify entity @s RadiusPerTick set value 0.006666667f
data modify entity @s ReapplicationDelay set value 20
data modify entity @s WaitTime set value 10

# Roll random potion effect
# Start with potion effects that have amplifiers
execute store result score random shroomhearth run random value 0..18

# Most potion effects with amplifiers start at level 2 and can be enhanced to level 4
# Speed II 10s
execute if score random shroomhearth matches 0 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:speed", duration:200, amplifier:1}
# Slowness II 10s
execute if score random shroomhearth matches 1 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:slowness", duration:200, amplifier:1}
# Haste II 10s
execute if score random shroomhearth matches 2 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:haste", duration:200, amplifier:1}
# Strength II 10s
execute if score random shroomhearth matches 3 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:strength", duration:200, amplifier:1}
# Jump Boost II 10s
execute if score random shroomhearth matches 4 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:jump_boost", duration:200, amplifier:1}
# Regeneration II 10s
execute if score random shroomhearth matches 5 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:regeneration", duration:200, amplifier:1}
# Resistance II 10s
execute if score random shroomhearth matches 6 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:resistance", duration:200, amplifier:1}
# Hunger II 10s
execute if score random shroomhearth matches 7 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:hunger", duration:200, amplifier:1}
# Weakness II 10s
execute if score random shroomhearth matches 8 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:weakness", duration:200, amplifier:1}

# Stronger effects like poison or wither start at level 1 and can be enhanced to level 2
# Poison 10s
execute if score random shroomhearth matches 9 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:poison", duration:200}
# Wither 10s
execute if score random shroomhearth matches 10 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:wither", duration:200}
# Absorption 10s
execute if score random shroomhearth matches 11 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:absorption", duration:200}
# Levitation 10s
execute if score random shroomhearth matches 12 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:levitation", duration:200}
# Slow Falling 10s
execute if score random shroomhearth matches 13 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:slow_falling", duration:200}

# Non-amplifier effects
# Mining Fatigue 10s
execute if score random shroomhearth matches 14 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:mining_fatigue", duration:200}
# Nausea 10s
execute if score random shroomhearth matches 15 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:nausea", duration:200}
# Fire Resistance 10s
execute if score random shroomhearth matches 16 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:fire_resistance", duration:200}
# Invisibility 10s
execute if score random shroomhearth matches 17 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:invisibility", duration:200}
# Blindness 10s
execute if score random shroomhearth matches 18 run data modify entity @s potion_contents.custom_effects append value {id:"minecraft:blindness", duration:200}

# Roll enhanced amplifiers for additional
execute if score random shroomhearth matches 0..13 if predicate shroomhearth:random_chance_20 if score distort_sequence shroomhearth.ender_dragon matches 1.. run function shroomhearth:ender_dragon/powers/distort/enhance_amplifier

# Reset random score
scoreboard players set random shroomhearth -1

# All effect clouds can have enhanced duration and radius
execute if predicate shroomhearth:random_chance_20 if score distort_sequence shroomhearth.ender_dragon matches 1.. run function shroomhearth:ender_dragon/powers/distort/enhance_duration
execute if predicate shroomhearth:random_chance_20 if score distort_sequence shroomhearth.ender_dragon matches 1.. run function shroomhearth:ender_dragon/powers/distort/enhance_radius

# Play particles
execute at @s run particle minecraft:trial_omen ~ ~1 ~ 0.5 0.5 0.5 1 8 force

# Play sound
execute at @s run playsound minecraft:block.trial_spawner.spawn_mob hostile @a ~ ~ ~ 8 0.9


