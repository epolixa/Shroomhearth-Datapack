tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/6] Executing function set 6"}]

# Process Recall Whistle channeled cast time
execute as @a[tag=recalling] at @s run function recall:recalling

# Re-schedule
schedule function shroomhearth:1s/6 1s