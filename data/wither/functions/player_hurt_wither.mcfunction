# revoke trigger
advancement revoke @s only wither:player_hurt_wither

# check wither's health
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run function wither:check_health