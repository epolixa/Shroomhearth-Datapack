advancement revoke @s only bottle_of_allay:player_used_amethyst_bottle_on_allay

tag @s add used_amethyst_bottle_on_allay

tag @n[nbt={equipment:{mainhand:{components:{"minecraft:custom_data":{spore:"amethyst_bottle"}}}}}] add bottling_allay

tellraw @a[tag=debug_bottle_of_allay] [{"text":"[bottle_of_allay.player_used_amethyst_bottle_on_allay] "},{"selector":"@s"},{"text":" used Amethyst Bottle on "},{"selector":"@n[tag=bottling_allay]"}]

execute as @n[tag=bottling_allay] run function bottle_of_allay:bottle_allay

tag @s remove used_amethyst_bottle_on_allay