# check viscinity for skeleton horses
execute store result score @s nearbyHorses if entity @e[type=minecraft:skeleton_horse,distance=..32]

# grant advancement if there are enough
advancement grant @s[scores={nearbyHorses=12..}] only challenges:krstfr

# revoke triggers
advancement revoke @s only challenges:wear_carved_pumpkin
