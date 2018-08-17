################################################################
# Item Glint
# show a particle on item drops that is visible from far away
################################################################

# tick up itemGlint for item entities
execute as @e[type=item] run scoreboard players add @s itemGlint 1

# spawn particle
execute as @e[type=item, scores={itemGlint=120}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=24..]

# reset itemGlint timer
execute as @e[type=item, scores={itemGlint=120..}] run scoreboard players set @s itemGlint 0 