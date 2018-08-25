################################################################
# Item Glint
# show a particle on item drops that is visible from far away
################################################################

# tick up itemGlint for item entities
execute as @e[type=item] run scoreboard players add @s itemGlint 1

# spawn particle
execute as @e[type=item, scores={itemGlint=120}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=24..]

# spawn particles on items that are about to despawn
execute as @e[type=item, scores={itemGlint=1,itemAge=4800..}] at @s run particle minecraft:crit ~ ~0.5 ~ 0.1 0.1 0.1 1 0 normal @a[distance=..24]
execute as @e[type=item, scores={itemGlint=61,itemAge=5400..}] at @s run particle minecraft:crit ~ ~0.5 ~ 0.1 0.1 0.1 1 0 normal @a[distance=..24]

# spawn particles on items that despawn
execute as @e[type=item, scores={itemAge=5998}] at @s run particle minecraft:poof ~ ~0.5 ~ 0 0 0 0 1 normal @a[distance=..24]

# play sound on items that despawn
execute as @e[type=item, scores={itemAge=5998}] at @s run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.2 0.6

# reset itemGlint timer
execute as @e[type=item, scores={itemGlint=120..}] run scoreboard players set @s itemGlint 0 