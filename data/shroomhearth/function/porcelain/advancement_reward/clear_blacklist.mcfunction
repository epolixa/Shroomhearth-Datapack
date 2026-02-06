# Executor: Player in The Porcelain who changed their inventory with a blacklisted item
# Position: the Player


# Prevent exploitable items in player inventory
clear @s #shroomhearth:porcelain/blacklist

# Revoke trigger
advancement revoke @s only shroomhearth:porcelain/inventory_changed_blacklist