tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:load] loading..."}]

# re-seed lcg
function shroomhearth:lcg/seed

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

# Initialize item persistance, runs every 8 seconds
schedule function item_interactions:8s 8s