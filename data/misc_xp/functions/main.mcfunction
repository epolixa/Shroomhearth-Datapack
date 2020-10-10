################################################################
# Farming XP
# get xp from farming related activities
################################################################

# run for players who just harvested a crop
execute as @s[scores={farmWheat=1..}] at @s run function misc_xp:wheat
execute as @s[scores={farmBeet=1..}] at @s run function misc_xp:beet
execute as @s[scores={farmCarrot=1..}] at @s run function misc_xp:carrot
execute as @s[scores={farmPotato=1..}] at @s run function misc_xp:potato
execute as @s[scores={farmWart=1..}] at @s run function misc_xp:nether_wart