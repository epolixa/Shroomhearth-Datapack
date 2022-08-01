# remove tag from the player after 10-second window
# if players log out before this runs I think the tag will be removed from the "player entity" anyway,
# that is to say when the player next logs in and creates a new "player entity" it won't preserve tags from last session
tag @a[tag=random_tp_target] remove random_tp_target