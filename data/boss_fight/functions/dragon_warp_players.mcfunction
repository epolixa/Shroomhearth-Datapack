# spread players
execute positioned 0 64 0 run spreadplayers 0 0 10 200 false @a[distance=..200]

# particles on players
execute at @a[distance=..200] run particle minecraft:portal ~ ~0.9 ~ 0.2 0.45 0.2 0.01 40

# play sound
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 12 0.7
