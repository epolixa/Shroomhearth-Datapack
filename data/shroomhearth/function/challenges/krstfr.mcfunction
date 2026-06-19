# check viscinity for skeleton horses
execute store result score @s nearby_skeleton_horses if entity @e[type=minecraft:skeleton_horse,distance=..32]

# grant advancement if there are enough
advancement grant @s[scores={nearby_skeleton_horses=12..}] only shroomhearth:challenges/krstfr/krstfr

# revoke triggers
advancement revoke @s only shroomhearth:challenges/krstfr/wear_carved_pumpkin
