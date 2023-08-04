# Revoke trigger
advancement revoke @s only allay_bottle:player_used_bottle_on_allay

say used bottle on allay

# Vanish the allay
execute positioned ^ ^ ^1 as @e[type=minecraft:allay,sort=nearest,limit=1,nbt={HandItems:[{id:"minecraft:glass_bottle",Count:1b},{}]}] run function allay_bottle:vanish_allay

# Give player remodeled spawn egg
loot give @s loot allay_bottle:allay_bottle

# Play sound
playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 1 1.2
