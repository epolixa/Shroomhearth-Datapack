tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/2] Executing function set 2"}]

# Process Ender Dragon functions in the end if not currently slain
execute if score dragonSlain shroomhearth matches 0 in minecraft:the_end positioned 0 64 0 run function ender_dragon:1s

# Re-schedule
schedule function shroomhearth:1s/2 1s