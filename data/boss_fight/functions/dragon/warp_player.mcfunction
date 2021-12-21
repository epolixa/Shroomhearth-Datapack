# spread players
execute positioned 0 64 0 run spreadplayers 0 0 1 40 false @s

# show actionbar
#execute positioned 0 64 0 run title @a[distance=..128] actionbar {"color":"dark_purple","font":"minecraft:alt","bold":true,"text":"WARP"}

# particles on players
execute at @s run particle minecraft:portal ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20

# play sound
execute at @s run playsound minecraft:item.chorus_fruit.teleport hostile @a ~ ~ ~ 1 0.7
