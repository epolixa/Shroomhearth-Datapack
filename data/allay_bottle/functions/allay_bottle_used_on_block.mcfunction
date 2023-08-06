# Revoke trigger
advancement revoke @s only allay_bottle:allay_bottle_used_on_block

# Prepare the allay
execute positioned ^ ^ ^1 as @e[type=minecraft:allay,sort=nearest,limit=1,tag=!from_bottle] at @s run function allay_bottle:prepare_allay