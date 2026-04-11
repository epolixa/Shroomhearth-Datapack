# 2.5 × level^2 – 40.5 × level + 360

scoreboard players operation xp_total shroomhearth.arena = xp_level shroomhearth.arena
scoreboard players operation xp_total shroomhearth.arena *= xp_level shroomhearth.arena

scoreboard players set xp_multiplier shroomhearth.arena 25
scoreboard players operation xp_total shroomhearth.arena *= xp_multiplier shroomhearth.arena

scoreboard players set xp_multiplier shroomhearth.arena 405
scoreboard players operation xp_additive shroomhearth.arena = xp_level shroomhearth.arena
scoreboard players operation xp_additive shroomhearth.arena *= xp_multiplier shroomhearth.arena

scoreboard players set xp_multiplier shroomhearth.arena 10
scoreboard players operation xp_additive shroomhearth.arena /= xp_multiplier shroomhearth.arena
scoreboard players operation xp_total shroomhearth.arena /= xp_multiplier shroomhearth.arena

scoreboard players remove xp_additive shroomhearth.arena 360

scoreboard players operation xp_total shroomhearth.arena -= xp_additive shroomhearth.arena
