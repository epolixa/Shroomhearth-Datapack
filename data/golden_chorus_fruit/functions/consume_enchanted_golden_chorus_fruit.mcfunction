advancement revoke @s only golden_chorus_fruit:consume_enchanted_golden_chorus_fruit

execute if dimension minecraft:the_nether run spreadplayers ~ ~ 0 100000 under 127 false @s
execute unless dimension minecraft:the_nether run spreadplayers ~ ~ 0 100000 false @s

advancement grant @s only golden_chorus_fruit:spontaneous_adventure