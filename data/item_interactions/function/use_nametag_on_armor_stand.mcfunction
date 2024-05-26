# revoke advancement
advancement revoke @s only item_interactions:use_nametag_on_armor_stand

# set armor stand data
execute anchored eyes positioned ^ ^ ^1 run data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest] CustomNameVisible set value 1b