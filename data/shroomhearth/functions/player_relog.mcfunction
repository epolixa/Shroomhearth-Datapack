tellraw @a[tag=debug] [{"selector":"@s"},{"color":"white","text":" relogged"}]

# Capture player UUID components
function shroomhearth:capture_uuid

# Inform favors
function community:inform_favors

# Reset playerLeft
scoreboard players reset @s playerLeft

# reset advancement trigger
advancement revoke @s only shroomhearth:player_relog