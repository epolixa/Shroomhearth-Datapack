################################################################
# AlmightyA
# mine over 50k stone blocks
################################################################

# grant advancement if stat is reached
advancement grant @s[scores={minedStone=100000..}] only player_advancements:almightya

# revoke triggers
advancement revoke @s only player_advancements:inventory_changed_stone
advancement revoke @s only player_advancements:inventory_changed_cobblestone