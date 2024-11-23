# Triggered every second by players who are in the deep dark and have darkness effect
advancement revoke @s only warden:player_receive_darkness_from_warden

execute as @n[type=minecraft:warden] at @s run function warden:warden_shed