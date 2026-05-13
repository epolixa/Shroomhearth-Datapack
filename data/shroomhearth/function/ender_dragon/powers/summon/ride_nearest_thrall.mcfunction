# Executes from the context of a newly summoned thrall mob

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/summon/ride_nearest_thrall] Attempting to ride nearest thrall "},{"selector":"@s"}]

# Attempt to ride nearest thrall
ride @s mount @n[tag=dragon_thrall,predicate=shroomhearth:ender_dragon/thrall_without_rider,distance=0.0625..]

# Consume an extra sequence score
scoreboard players remove summon_sequence shroomhearth.ender_dragon 1