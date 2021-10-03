# when a player obtains raw gold...

# revoke trigger
advancement revoke @s only spoopville:inventory_changed_raw_gold

# schedule reset of pick_up_spoop for next tick
schedule function spoopville:reset_pick_up_spoop 1t