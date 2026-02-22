# Executor: A Player that received levitation from a gravity well on the end island
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/effects_changed_gravity] "},{"selector":"@s"},{"text":" received levitation from a gravity well"}]


advancement revoke @s only shroomhearth:ender_dragon/effects_changed_gravity

particle minecraft:sonic_boom ~ ~0.5 ~ ~ ~ ~ 0 0
#playsound minecraft:block.sculk.charge player @s ~ ~ ~ 1 0.5
playsound minecraft:block.trial_spawner.about_to_spawn_item player @s ~ ~3 ~ 3 0.9