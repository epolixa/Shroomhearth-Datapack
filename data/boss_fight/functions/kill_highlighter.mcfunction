# set deathtime and other data on mob
execute as @e[type=minecraft:shulker,tag=highlighter] run data merge entity @s {DeathTime:19}

# remove highlighter shulkers
kill @e[type=minecraft:shulker,tag=highlighter]