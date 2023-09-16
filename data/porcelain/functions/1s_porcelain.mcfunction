# set players to creative mode
gamemode creative @a[gamemode=!creative,distance=0..]

# relative to anchor in porcelain
execute as @e[tag=porcelain_anchor,distance=0..] at @s run function porcelain:anchor_in_porcelain

# merge NoAI and other NBT
execute as @e[type=#shroomhearth:mobs,distance=0..,tag=!vitrified] run data merge entity @s {Tags:["vitrified"],DeathLootTable:"minecraft:empty",Silent:true,Health:1}

# remove boss mobs
kill @e[type=minecraft:wither,distance=0..]

# remove item entities
#kill @e[type=item,distance=0..]
