################################################################
# Vampire Fang
# script for vampire fang usage
################################################################

# Give regen effect to anyone dealing damage with sword
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword", tag:{relic:"vampire_fang"}}}, scores={vampDamage=1..}] at @s run effect give @s minecraft:regeneration 5 0

# Reset score
execute as @a[scores={vampDamage=1..}] run scoreboard players set @s vampDamage 0