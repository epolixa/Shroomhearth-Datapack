# cancel the recall if a player takes damage during cast time

advancement revoke @s only tphome:interrupted

tag @s remove recalling

effect clear @s minecraft:slowness

tellraw @s "Recall interrupted"