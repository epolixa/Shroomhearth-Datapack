tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/4] Executing function set 4"}]

# Process harmony scores, harmony cap entities, and spores events
function harmony:1s

# Update world border scores
execute unless predicate shroomhearth:world_border/world_border_idle run function shroomhearth:world_border/update_distance_scores

# Re-schedule
schedule function shroomhearth:1s/4 1s