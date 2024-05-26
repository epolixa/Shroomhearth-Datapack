# 2.5 × level^2 – 40.5 × level + 360

scoreboard players operation xpTotal shroomhearth = xpLevel shroomhearth
scoreboard players operation xpTotal shroomhearth *= xpLevel shroomhearth

scoreboard players set xpMultiplier shroomhearth 25
scoreboard players operation xpTotal shroomhearth *= xpMultiplier shroomhearth

scoreboard players set xpMultiplier shroomhearth 405
scoreboard players operation xpAdditive shroomhearth = xpLevel shroomhearth
scoreboard players operation xpAdditive shroomhearth *= xpMultiplier shroomhearth

scoreboard players set xpMultiplier shroomhearth 10
scoreboard players operation xpAdditive shroomhearth /= xpMultiplier shroomhearth
scoreboard players operation xpTotal shroomhearth /= xpMultiplier shroomhearth

scoreboard players remove xpAdditive shroomhearth 360

scoreboard players operation xpTotal shroomhearth -= xpAdditive shroomhearth
