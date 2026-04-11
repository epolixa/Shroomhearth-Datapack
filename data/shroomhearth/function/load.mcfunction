# Executor: Server
# Position: Spawn

# Runs only on initial server startup when the datapack is loaded

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:load] Loading Shroomhearth Datapack..."}]


# Kick off staggered functions to run every second
function shroomhearth:1s/0
schedule function shroomhearth:1s/1 2t
schedule function shroomhearth:1s/2 4t
schedule function shroomhearth:1s/3 6t
schedule function shroomhearth:1s/4 8t
schedule function shroomhearth:1s/5 10t
schedule function shroomhearth:1s/6 12t
schedule function shroomhearth:1s/7 14t
schedule function shroomhearth:1s/8 16t
schedule function shroomhearth:1s/9 18t

# Kick off functions that run every 8 seconds
# Mainly for named item persistance
schedule function shroomhearth:8s 8s