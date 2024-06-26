# executed from context of wither who just got damaged

# capture wither's health
execute store result score @s bossHealth run data get entity @s Health

# summon skeletons if at half health
execute if predicate wither:half_health_without_skeletons run function wither:summon_wither_skeletons