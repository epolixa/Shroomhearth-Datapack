# 4.5 × level^2 – 162.5 × level + 2220

scoreboard players operation xp_total shroomhearth.arena = xp_level shroomhearth.arena
scoreboard players operation xp_total shroomhearth.arena *= xp_level shroomhearth.arena

scoreboard players set xp_multiplier shroomhearth.arena 45
scoreboard players operation xp_total shroomhearth.arena *= xp_multiplier shroomhearth.arena

scoreboard players set xp_multiplier shroomhearth.arena 1625
scoreboard players operation xp_additive shroomhearth.arena = xp_level shroomhearth.arena
scoreboard players operation xp_additive shroomhearth.arena *= xp_multiplier shroomhearth.arena

scoreboard players set xp_multiplier shroomhearth.arena 10
scoreboard players operation xp_additive shroomhearth.arena /= xp_multiplier shroomhearth.arena
scoreboard players operation xp_total shroomhearth.arena /= xp_multiplier shroomhearth.arena

scoreboard players remove xp_additive shroomhearth.arena 2220

scoreboard players operation xp_total shroomhearth.arena -= xp_additive shroomhearth.arena
