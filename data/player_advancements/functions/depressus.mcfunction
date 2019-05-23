################################################################
# Depressus
# craft a stack of golden carrots
################################################################

# grant the advancement when they craft a full stack of 64
advancement grant @s[scores={craftedCarrots=64..}, advancements={player_advancements:depressus=false}] only player_advancements:depressus

# craftedCarrots - should reset to 0 if the advancement is not yet made and the requirement is not met
scoreboard players set @s[scores={craftedCarrots=1..}, advancements={player_advancements:depressus=false}] craftedCarrots 0

# revoke trigger if advancement is not yet made
advancement revoke @s only player_advancements:inventory_changed_golden_carrots