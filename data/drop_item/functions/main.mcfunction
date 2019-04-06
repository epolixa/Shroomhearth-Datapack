################################################################
# Drop Item
# play a plop sound when dropping an item
################################################################

# check if player dropped an item
execute as @s[scores={dropItem=1..}] run function drop_item:drop

#revoke advancement
advancement revoke @s only drop_item:drop_item