# Executes from the context of a thrall mob that was just /execute summoned

# Tag self as a thrall
tag @s add dragon_thrall

# Join the ender dragon team so kill message has color
team join dragon @s

# Make the thrall persist - flying mobs like ghasts tend to wander off and despawn on their own
execute as @s[type=!#ender_dragon:flying] run data merge entity @s {PersistenceRequired:1b}

# Tweak other data for certain mobs...
execute as @s[type=#ender_dragon:piglins] run data merge entity @s {IsImmuneToZombification:1b}
execute as @s[type=#ender_dragon:babies] run data merge entity @s {Age:0,IsBaby:0b}
execute as @s[type=#ender_dragon:patrol_leaders] run data merge entity @s {PatrolLeader:0b}

# Small chance to apply random buff effect
execute if predicate shroomhearth:random_chance_20 run function ender_dragon:powers/summon/apply_random_effect

# Small chance to ride nearest thrall
execute if predicate shroomhearth:random_chance_20 run ride @s mount @n[tag=dragon_thrall,predicate=ender_dragon:thrall_without_rider,distance=0.1..]

# Play particles on summoned thrall
execute at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.1 0 0.1 0.05 24 force

# Play sound on summoned thrall
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 8 1.2