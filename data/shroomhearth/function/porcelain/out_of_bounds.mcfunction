# Executor: Player out of bounds in The Porcelain
# Position: the Player


# executes when player y position exceeds 1..256
advancement revoke @s only shroomhearth:porcelain/out_of_bounds

# attempt to spread player to nearby solid ground
spreadplayers ~ ~ 0 16 false @s

# if player is still out of bounds, simply teleport to ground level
tp @s[y=0,dy=-1000] ~ 32 ~