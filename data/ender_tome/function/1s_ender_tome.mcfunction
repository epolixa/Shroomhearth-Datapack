# Executes from the context of every activated Ender Tome entity

# Tick age of the Ender Tome
scoreboard players add @s itemAge 1

# Play particle effects to indicate age
particle minecraft:witch ~ ~ ~ 0.1 0 0.1 0.001 3

# Check if the Ender Tome has expired
execute if score @s itemAge matches 5.. run function ender_tome:deactivate_ender_tome