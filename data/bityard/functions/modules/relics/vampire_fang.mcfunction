################################################################
# Vampire Fang
# script for vampire fang usage
################################################################

# Give regen effect to anyone dealing damage with sword
execute as @a[nbt={SelectedItem:{tag:{relic:"vampire_fang"}}}, scores={playerDamage=1..}] at @s run effect give @s minecraft:regeneration 5 0