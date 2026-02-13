# Executor: A Wither who has not yet summoned skeletons and took damage at half health
# Position: the Wither

tellraw @a[tag=debug_wither] [{"text":"[shroomhearth:wither/summon_wither_skeletons] Summoning wither skeletons for "},{"selector":"@s"}]

# Play sound
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 1.75

# Summon three Wither Skeletons
summon minecraft:wither_skeleton ^2 ^ ^1 {Tags:["wither_thrall","new_wither_thrall"]}
summon minecraft:wither_skeleton ^ ^ ^2 {Tags:["wither_thrall","new_wither_thrall"]}
summon minecraft:wither_skeleton ^-2 ^ ^1 {Tags:["wither_thrall","new_wither_thrall"]}
execute as @e[tag=wither_thrall,tag=new_wither_thrall,limit=3,sort=nearest] at @s run function shroomhearth:wither/initialize_wither_skeletons

# tag wither so it does not summon skeletons again
tag @s add summoned_wither_skeletons
