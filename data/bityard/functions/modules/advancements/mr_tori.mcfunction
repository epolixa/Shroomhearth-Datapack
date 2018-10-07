################################################################
# Mr_Tori
# craft a stack of golden carrots
################################################################

# craftedCarrots - should reset every tick if greater than 0
execute as @a[scores={craftedCarrots=1..},advancements={bityard:mr_tori=false}] run scoreboard players set @s craftedCarrots 0

# grant the advancement when they craft a full stack of 64
execute as @a[scores={craftedCarrots=64..}, advancements={bityard:mr_tori=false}] run advancement grant @s only bityard:mr_tori