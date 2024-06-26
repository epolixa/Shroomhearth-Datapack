# 4.5 × level^2 – 162.5 × level + 2220

scoreboard players operation xpTotal shroomhearth = xpLevel shroomhearth
scoreboard players operation xpTotal shroomhearth *= xpLevel shroomhearth

scoreboard players set xpMultiplier shroomhearth 45
scoreboard players operation xpTotal shroomhearth *= xpMultiplier shroomhearth

scoreboard players set xpMultiplier shroomhearth 1625
scoreboard players operation xpAdditive shroomhearth = xpLevel shroomhearth
scoreboard players operation xpAdditive shroomhearth *= xpMultiplier shroomhearth

scoreboard players set xpMultiplier shroomhearth 10
scoreboard players operation xpAdditive shroomhearth /= xpMultiplier shroomhearth
scoreboard players operation xpTotal shroomhearth /= xpMultiplier shroomhearth

scoreboard players remove xpAdditive shroomhearth 2220

scoreboard players operation xpTotal shroomhearth -= xpAdditive shroomhearth
