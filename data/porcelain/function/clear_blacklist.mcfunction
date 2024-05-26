# prevent exploitable items in player inventory
clear @s #porcelain:blacklist

# revoke trigger
advancement revoke @s only porcelain:inventory_changed_blacklist