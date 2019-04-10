################################################################
# AlmightyA
# mine over 50k stone blocks
################################################################

# grant advancement if stat is reached
advancement grant @s[scores={minedStone=50000..}, advancements={player_advancements:almightya=false}] only player_advancements:almightya

# revoke triggers if advancement is not yet made
advancement revoke @s{advancements={player_advancements:almightya=false}} only player_advancements:inventory_changed_stone
advancement revoke @s{advancements={player_advancements:almightya=false}} only player_advancements:inventory_changed_cobblestone