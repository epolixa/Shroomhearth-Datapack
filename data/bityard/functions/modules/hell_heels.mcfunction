################################################################
# Hell Heels
# script for hell heels
################################################################

# Fill in lava at edges
execute as @a[nbt={Inventory:[{Slot:100b, tag:{relic:"hell_heels"}}]}, scores={playerSneak=1..}] at @s run fill ~-1.5 ~-0.5 ~-1.5 ~1.5 ~-0.5 ~1.5 minecraft:lava replace minecraft:magma_block

# Replace lava with magma under player
execute as @a[nbt={Inventory:[{Slot:100b, tag:{relic:"hell_heels"}}]}, scores={playerSneak=1..}] at @s run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~-0.5 ~0.5 minecraft:magma_block replace minecraft:lava

# Fun particles
execute as @a[nbt={Inventory:[{Slot:100b, tag:{relic:"hell_heels"}}]}, scores={playerSneak=1..}] at @s if block ~ ~-0.5 ~ minecraft:magma_block run particle minecraft:flame ~ ~ ~ 1.5 0 1.5 0 1