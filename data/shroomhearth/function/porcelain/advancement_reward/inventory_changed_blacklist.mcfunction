# Executor: Player in The Porcelain who changed their inventory with a blacklisted item
# Position: the Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/advancement_reward/inventory_changed_blacklist] Clearing blacklisted items from "},{"selector":"@s"},{"text":"'s inventory"}]


# Prevent exploitable items in player inventory
clear @s #shroomhearth:porcelain/blacklist

# Revoke trigger
advancement revoke @s only shroomhearth:porcelain/inventory_changed_blacklist