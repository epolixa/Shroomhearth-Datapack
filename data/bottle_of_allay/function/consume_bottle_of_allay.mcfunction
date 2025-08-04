tellraw @a[tag=debug_bottle_of_allay] [{"text":"[bottle_of_allay.consume_bottle_of_allay] "},{"selector":"@s"},{"text":" used Bottle of Allay"}]

advancement revoke @s only bottle_of_allay:consume_bottle_of_allay

tag @s add used_bottle_of_allay

execute summon minecraft:allay run function bottle_of_allay:summon_unbottled_allay

tag @s remove used_bottle_of_allay