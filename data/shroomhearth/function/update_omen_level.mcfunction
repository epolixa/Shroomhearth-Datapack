# Updates the executor's omen_level score according to their current Bad Omen level

# Set omen_level to 0
scoreboard players set @s omen_level 0

# Increase omen_level by amplifier
execute store result score @s omen_level run data get entity @s active_effects[{id:"minecraft:bad_omen"}].amplifier

# Increment omen_level if they have Bad Omen
execute if data entity @s active_effects[{id:"minecraft:bad_omen"}] run scoreboard players add @s omen_level 1