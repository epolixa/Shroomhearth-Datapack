# kill seats that don't have nearby cushions
execute as @e[tag=seat] at @s unless entity @e[predicate=sitting:invisible_cushion] run kill @s

# set cushion visible
execute as @e[tag=seat,predicate=sitting:empty_seat] at @s run data modify entity @e[predicate=sitting:invisible_cushion,limit=1,sort=nearest] Invisible set value false

# kill seats that don't have players riding them 
execute as @e[tag=seat,predicate=sitting:empty_seat] run kill @s

say checking seats