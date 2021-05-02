# check if player dropped an item
execute as @s[scores={dropItem=1..}] run function item_interactions:dropped_item

# revoke advancement
advancement revoke @s only item_interactions:inventory_changed