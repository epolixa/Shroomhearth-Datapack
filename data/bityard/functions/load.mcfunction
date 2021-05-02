# re-seed lcg
function bityard:lcg/setup

# functions to run every second
schedule function bityard:1s 1s

# initialize item persistance, runs every 8 seconds
schedule function item_interactions:8s 8s