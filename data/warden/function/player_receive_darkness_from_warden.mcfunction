# Triggered every second by players who are in the deep dark and have darkness effect
advancement revoke @s only warden:player_receive_darkness_from_warden

execute if predicate shroomhearth:random_chance_50 as @n[type=minecraft:warden,tag=!shed_recently] at @s run function warden:warden_shed

tag @n[type=minecraft:warden,tag=shed_recently] remove shed_recently