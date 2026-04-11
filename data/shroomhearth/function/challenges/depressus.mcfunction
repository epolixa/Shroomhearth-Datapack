# grant the advancement when they craft a full stack of 64
advancement grant @s[scores={craftedCarrots=64..}] only challenges:depressus

# craftedCarrots - should reset to 0 if the advancement is not yet made and the requirement is not met
scoreboard players set @s[scores={craftedCarrots=1..}] craftedCarrots 0

# revoke trigger
advancement revoke @s only challenges:inventory_changed_golden_carrots