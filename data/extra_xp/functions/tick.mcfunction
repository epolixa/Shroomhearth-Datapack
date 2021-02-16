# run for players who just harvested a crop
execute as @s[scores={farmWheat=1..}] at @s run function extra_xp:wheat
execute as @s[scores={farmCarrot=1..}] at @s run function extra_xp:carrot
execute as @s[scores={farmPotato=1..}] at @s run function extra_xp:potato
execute as @s[scores={farmBeet=1..}] at @s run function extra_xp:beet
execute as @s[scores={farmWart=1..}] at @s run function extra_xp:nether_wart
execute as @s[scores={farmAmethyst=1..}] at @s run function extra_xp:amethyst