# Executor: A Wither who has not yet summoned skeletons
# Position: the Wither

tellraw @a[tag=debug_wither] [{"text":"[shroomhearth:wither/check_health] Checking health of "},{"selector":"@s"}]


# capture wither's health
execute store result score @s health run data get entity @s Health

# summon skeletons if at half health
execute if predicate shroomhearth:wither_below_half_health run function shroomhearth:wither/summon_wither_skeletons