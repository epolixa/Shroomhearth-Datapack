# level^2 + 6 × level

scoreboard players operation xp_total shroomhearth.arena = xp_level shroomhearth.arena
scoreboard players operation xp_total shroomhearth.arena *= xp_level shroomhearth.arena

scoreboard players set xp_multiplier shroomhearth.arena 6
scoreboard players operation xp_multiplier shroomhearth.arena *= xp_level shroomhearth.arena

scoreboard players operation xp_total shroomhearth.arena += xp_multiplier shroomhearth.arena
