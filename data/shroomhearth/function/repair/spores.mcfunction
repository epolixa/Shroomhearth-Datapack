# spores of armor
execute store result score @s repairable run clear @s #harmony:spores[custom_data={"spore":"spores_of_armor"}] 0
clear @s[scores={repairable=1..}] #harmony:spores[custom_data={"spore":"spores_of_armor"}] 1
loot give @s[scores={repairable=1..}] loot harmony:spores/armor
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# spores of ease
execute store result score @s repairable run clear @s #harmony:spores[custom_data={"spore":"spores_of_ease"}] 0
clear @s[scores={repairable=1..}] #harmony:spores[custom_data={"spore":"spores_of_ease"}] 1
loot give @s[scores={repairable=1..}] loot harmony:spores/ease
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# spores of experience
execute store result score @s repairable run clear @s #harmony:spores[custom_data={"spore":"spores_of_experience"}] 0
clear @s[scores={repairable=1..}] #harmony:spores[custom_data={"spore":"spores_of_experience"}] 1
loot give @s[scores={repairable=1..}] loot harmony:spores/experience
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# spores of haste
execute store result score @s repairable run clear @s #harmony:spores[custom_data={"spore":"spores_of_haste"}] 0
clear @s[scores={repairable=1..}] #harmony:spores[custom_data={"spore":"spores_of_haste"}] 1
loot give @s[scores={repairable=1..}] loot harmony:spores/haste
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# spores of health
execute store result score @s repairable run clear @s #harmony:spores[custom_data={"spore":"spores_of_health"}] 0
clear @s[scores={repairable=1..}] #harmony:spores[custom_data={"spore":"spores_of_health"}] 1
loot give @s[scores={repairable=1..}] loot harmony:spores/health
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# spores of keeping
execute store result score @s repairable run clear @s #harmony:spores[custom_data={"spore":"spores_of_keeping"}] 0
clear @s[scores={repairable=1..}] #harmony:spores[custom_data={"spore":"spores_of_keeping"}] 1
loot give @s[scores={repairable=1..}] loot harmony:spores/keeping
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# spores of leaping
execute store result score @s repairable run clear @s #harmony:spores[custom_data={"spore":"spores_of_leaping"}] 0
clear @s[scores={repairable=1..}] #harmony:spores[custom_data={"spore":"spores_of_leaping"}] 1
loot give @s[scores={repairable=1..}] loot harmony:spores/leaping
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# spores of strength
execute store result score @s repairable run clear @s #harmony:spores[custom_data={"spore":"spores_of_strength"}] 0
clear @s[scores={repairable=1..}] #harmony:spores[custom_data={"spore":"spores_of_strength"}] 1
loot give @s[scores={repairable=1..}] loot harmony:spores/strength
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# spores of swiftness
execute store result score @s repairable run clear @s #harmony:spores[custom_data={"spore":"spores_of_swiftness"}] 0
clear @s[scores={repairable=1..}] #harmony:spores[custom_data={"spore":"spores_of_swiftness"}] 1
loot give @s[scores={repairable=1..}] loot harmony:spores/swiftness
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable
