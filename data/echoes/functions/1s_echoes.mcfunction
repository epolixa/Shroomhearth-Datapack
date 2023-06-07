say echoes armor stand waiting...

particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0.05 2

# kill self if matching player appears
execute positioned as @a[gamemode=!spectator,sort=nearest] if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 if score @s UUID4 = @p UUID4 run function echoes:logged_in