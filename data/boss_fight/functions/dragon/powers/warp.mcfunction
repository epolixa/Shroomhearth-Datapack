# spread players
execute positioned 0 64 0 run spreadplayers 0 0 1 40 false @a[distance=..190]

# show actionbar
execute positioned 0 64 0 run title @a[distance=..190] actionbar {"color":"dark_purple","font":"minecraft:alt","bold":true,"text":"WARP"}

# particles on players
execute at @a[distance=..190] run particle minecraft:portal ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20

# play sound
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 12 0.7
