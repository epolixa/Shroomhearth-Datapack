# play effects
particle minecraft:witch ~ ~1 ~ 3 1 3 0 64 force

# spread players
execute positioned 0 64 0 run spreadplayers 0 0 10 200 false @a[distance=..200]

# particles on players
execute at @a[distance=..200] run particle minecraft:portal ~ ~0.9 ~ 0.2 0.45 0.2 0.01 40

# play sound
playsound minecraft:entity.enderman.teleport hostile @a[distance=0..] ~ ~ ~ 13 0.8
