tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/6] Executing function set 6"}]

# Process Recall Whistle channeled cast time
execute as @a[tag=recalling] at @s run function recall:recalling
execute as @a[tag=using_echo_horn] at @s run function echo_horn:using_echo_horn

# Re-schedule
schedule function shroomhearth:1s/6 1s