################################################################
# Mojjagack
# script for mojjagack
################################################################

# TODO
execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1..}] at @s run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 2 0.9

execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1.., rng=1}] at @s run effect give @e[limit=1,sort=nearest,distance=1..] minecraft:levitation 5 0

execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1.., rng=2}] at @s run effect give @e[limit=1,sort=nearest,distance=1..] minecraft:slowness 5 0

execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1.., rng=3}] at @s run effect give @e[limit=1,sort=nearest,distance=1..] minecraft:poison 5 0

execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1.., rng=4}] at @s run effect give @e[limit=1,sort=nearest,distance=1..] minecraft:mining_fatigue 5 0

execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1.., rng=5}] at @s run effect give @e[limit=1,sort=nearest,distance=1..] minecraft:nausea 5 0

execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1.., rng=6}] at @s run effect give @e[limit=1,sort=nearest,distance=1..] minecraft:weakness 5 0

execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1.., rng=7}] at @s run effect give @e[limit=1,sort=nearest,distance=1..] minecraft:blindness 5 0

execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1.., rng=8}] at @s run effect give @e[limit=1,sort=nearest,distance=1..] minecraft:hunger 5 0

execute as @a[nbt={SelectedItem:{tag:{relic:"mojjagack"}}}, scores={playerDamage=1.., rng=9}] at @s run effect give @e[limit=1,sort=nearest,distance=1..] minecraft:wither 5 0