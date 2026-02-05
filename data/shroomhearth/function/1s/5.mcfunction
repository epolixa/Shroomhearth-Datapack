#tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/5] Executing function set 5"}]


# Process wardable mobs
execute as @e[type=#mob_warding:wardable,tag=!unwardable] at @s run function mob_warding:1s_mob

# Process players with End Crystal visibility
execute as @a[predicate=mob_warding:end_crystal_vision] at @s run function mob_warding:1s_player

# Re-schedule
schedule function shroomhearth:1s/5 1s