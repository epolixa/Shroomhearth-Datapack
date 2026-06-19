tellraw @a[tag=debug_challenges] [{"text":"[shroomhearth:challenges/depressus] "},{"selector":"@s"},{"text":" obtained 64 Golden Carrots"}]  


# grant the advancement when they craft a full stack of 64
advancement grant @s[scores={crafted_golden_carrots=64..}] only shroomhearth:challenges/depressus/depressus

# crafted_golden_carrots - should reset to 0 if the advancement is not yet made and the requirement is not met
scoreboard players set @s[scores={crafted_golden_carrots=1..}] crafted_golden_carrots 0

# revoke trigger
advancement revoke @s only shroomhearth:challenges/depressus/inventory_changed_golden_carrots