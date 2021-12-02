# re-seed lcg
function shroomhearth:lcg/seed

# kick off functions to run every second
schedule function shroomhearth:1s 1s

# initialize item persistance, runs every 8 seconds
schedule function item_interactions:8s 8s