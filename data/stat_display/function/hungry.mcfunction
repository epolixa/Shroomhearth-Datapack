# set lcg
scoreboard players set lcgModulus shroomhearth 9
function shroomhearth:lcg/random

# play hungry sounds rarely
execute if score lcg shroomhearth matches 0 at @s[gamemode=survival] run playsound minecraft:entity.strider.ambient player @a ~ ~ ~ 0.1 0.5

# revoke trigger
advancement revoke @s only stat_display:hungry