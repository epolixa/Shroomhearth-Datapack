# Revoke trigger
advancement revoke @s only allay_bottle:allay_bottle_used_on_block

say used bottle of allay on block

# Give player fresh bottle
give @s minecraft:glass_bottle

# Prepare the allay
execute positioned ^ ^ ^1 as @e[type=minecraft:allay,sort=nearest,limit=1] run function allay_bottle:prepare_allay