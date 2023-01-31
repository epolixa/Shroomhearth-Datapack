# kill seats that don't have nearby cushions
execute as @e[tag=seat] at @s unless entity @e[type=minecraft:item_frame,nbt={Facing:1b},distance=..1.5] run kill @s

# set cushion visible
execute as @e[tag=seat,predicate=sitting:empty_seat] at @s run data modify entity @e[type=minecraft:item_frame,nbt={Facing:1b},limit=1,sort=nearest] Invisible set value false

# kill seats that don't have players riding them 
execute as @e[tag=seat,predicate=sitting:empty_seat] run kill @s

say checking seats