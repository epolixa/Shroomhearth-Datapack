# Triggered every second by players who are in the deep dark and have darkness effect
advancement revoke @s only warden:player_receive_darkness_from_warden

execute as @n[type=minecraft:warden,tag=!shed_recently] at @s run function warden:warden_shed

execute if entity @e[type=minecraft:warden,tag=shed_recently] run schedule function warden:remove_shed_recently 12s append