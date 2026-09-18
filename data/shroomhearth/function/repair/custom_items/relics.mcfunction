# bleeding tooth
execute store result score @s repairable run clear @s #minecraft:axes[custom_data={"shroomhearth_id":"bleeding_tooth"}] 0
clear @s[scores={repairable=1..}] #minecraft:axes[custom_data={"shroomhearth_id":"bleeding_tooth"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:stories/relics/bleeding_tooth
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# guardians glaive
execute store result score @s repairable run clear @s #minecraft:spears[custom_data={"shroomhearth_id":"guardians_glaive"}] 0
clear @s[scores={repairable=1..}] #minecraft:spears[custom_data={"shroomhearth_id":"guardians_glaive"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:stories/relics/guardians_glaive
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# harmony pickaxe
execute store result score @s repairable run clear @s #minecraft:pickaxes[custom_data={"shroomhearth_id":"harmony_pickaxe"}] 0
clear @s[scores={repairable=1..}] #minecraft:pickaxes[custom_data={"shroomhearth_id":"harmony_pickaxe"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:stories/relics/harmony_pickaxe
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# harmony sword
execute store result score @s repairable run clear @s #minecraft:swords[custom_data={"shroomhearth_id":"harmony_sword"}] 0
clear @s[scores={repairable=1..}] #minecraft:swords[custom_data={"shroomhearth_id":"harmony_sword"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:stories/relics/harmony_sword
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# jerry rig
execute store result score @s repairable run clear @s minecraft:crossbow[custom_data={"shroomhearth_id":"jerry_rig"}] 0
clear @s[scores={repairable=1..}] minecraft:crossbow[custom_data={"shroomhearth_id":"jerry_rig"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:stories/relics/jerry_rig
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# petrichor pond pole
execute store result score @s repairable run clear @s minecraft:fishing_rod[custom_data={"shroomhearth_id":"petrichor_pond_pole"}] 0
clear @s[scores={repairable=1..}] minecraft:fishing_rod[custom_data={"shroomhearth_id":"petrichor_pond_pole"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:stories/relics/petrichor_pond_pole
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# threnel
execute store result score @s repairable run clear @s #minecraft:pickaxes[custom_data={"shroomhearth_id":"threnel"}] 0
clear @s[scores={repairable=1..}] #minecraft:pickaxes[custom_data={"shroomhearth_id":"threnel"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:stories/relics/threnel
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# wondermerian blade
execute store result score @s repairable run clear @s #minecraft:swords[custom_data={"shroomhearth_id":"wondermerian_blade"}] 0
clear @s[scores={repairable=1..}] #minecraft:swords[custom_data={"shroomhearth_id":"wondermerian_blade"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:stories/relics/wondermerian_blade
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable

# wondermerian staff
execute store result score @s repairable run clear @s #minecraft:spears[custom_data={"shroomhearth_id":"wondermerian_staff"}] 0
clear @s[scores={repairable=1..}] #minecraft:spears[custom_data={"shroomhearth_id":"wondermerian_staff"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:stories/relics/wondermerian_staff
tag @s[scores={repairable=1..}] add repaired
scoreboard players reset @s repairable