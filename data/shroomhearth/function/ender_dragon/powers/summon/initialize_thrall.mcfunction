# Executes from the context of a thrall mob that was just /execute summoned

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/summon/initialize_thrall] Initializing summoned "},{"selector":"@s"}]


# Tag self as a thrall
tag @s add dragon_thrall

# Join the ender dragon team so kill message has color
team join ender_dragon @s

# Make the thrall persist - flying mobs like ghasts tend to wander off and despawn on their own
execute as @s[type=!#shroomhearth:ender_dragon/flying] run data merge entity @s {PersistenceRequired:1b}

# Tweak other data for certain mobs...
execute as @s[type=#shroomhearth:ender_dragon/piglins] run data merge entity @s {IsImmuneToZombification:1b}
execute as @s[type=#shroomhearth:ender_dragon/babies] run data merge entity @s {Age:0,IsBaby:0b}
execute as @s[type=#shroomhearth:ender_dragon/patrol_leaders] run data merge entity @s {PatrolLeader:0b}

# Small chance to apply random potion effect
execute if predicate shroomhearth:random_chance_20 if score summon_sequence shroomhearth.ender_dragon matches 1.. run function shroomhearth:ender_dragon/powers/summon/apply_random_effect

# Small chance to apply random rune attribute
execute if predicate shroomhearth:random_chance_20 if score summon_sequence shroomhearth.ender_dragon matches 1.. run function shroomhearth:ender_dragon/powers/summon/apply_random_attribute

# Small chance to ride nearest thrall
execute if predicate shroomhearth:random_chance_20 if score summon_sequence shroomhearth.ender_dragon matches 1.. run function shroomhearth:ender_dragon/powers/summon/ride_nearest_thrall

# Play particles on summoned thrall
execute at @s run particle minecraft:trial_omen ~ ~1 ~ 0.5 0.5 0.5 1 8 force

# Play sound on summoned thrall
execute at @s run playsound minecraft:block.trial_spawner.spawn_mob hostile @a ~ ~ ~ 8 1.1