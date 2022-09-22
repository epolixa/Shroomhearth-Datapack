# when a player obtains raw gold...

# revoke trigger
advancement revoke @s only hollow_vale:inventory_changed_raw_gold

# schedule reset of pick_up_spoop for next tick
schedule function hollow_vale:reset_pick_up_spoop 1t