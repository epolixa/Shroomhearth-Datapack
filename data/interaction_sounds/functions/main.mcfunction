## UTILITY SOUNDS
## Play a sound when a player clicks on a crafting table, furnace, etc

execute as @s[scores={clickCrafting=1..}] run function interaction_sounds:crafting_table
execute as @s[scores={clickBed=1..}] run function interaction_sounds:bed