say Ticking Ender Tome

# Executes from the context of every ender tome entity

scoreboard players add @s itemAge 1

particle minecraft:witch ~ ~ ~ 0.1 0 0.1 0.001 3

execute if score @s itemAge matches 5.. run function ender_tome:ender_tome_expired