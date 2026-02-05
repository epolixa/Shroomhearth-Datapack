# level^2 + 6 × level

scoreboard players operation xpTotal shroomhearth = xpLevel shroomhearth
scoreboard players operation xpTotal shroomhearth *= xpLevel shroomhearth

scoreboard players set xpMultiplier shroomhearth 6
scoreboard players operation xpMultiplier shroomhearth *= xpLevel shroomhearth

scoreboard players operation xpTotal shroomhearth += xpMultiplier shroomhearth
