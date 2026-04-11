# Executor: Player whose y position exceeds 1..256 in The Porcelain
# Position: the Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/advancement_reward/out_of_bounds] "},{"selector":"@s"},{"text":" is out of bounds, attempting to spread or teleport to safety"}]


# Attempt to spread player to nearby solid ground
spreadplayers ~ ~ 0 16 false @s

# If player is still out of bounds, simply teleport to ground level
tp @s[y=0,dy=-1000] ~ 32 ~

# Revoke trigger
advancement revoke @s only shroomhearth:porcelain/out_of_bounds