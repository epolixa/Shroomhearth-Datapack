################################################################
# Advancement Triggers
# controls certain advancements based on complex criteria
################################################################

# AlmightyA - mine over 50k stone blocks
execute as @e[scores={minedStone=50000..},advancements={bityard:almightya=false}] run advancement grant @s only bityard:almightya
