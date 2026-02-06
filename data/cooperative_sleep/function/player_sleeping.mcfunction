# grant advancement if another player is also sleeping
execute at @s if entity @p[tag=sleeping,distance=1..] run advancement grant @s only sleeping:slumber_party

# make night pass faster for sleeping players
time of minecraft:overworld add 10

# get and store time of day when it's thundering
execute if predicate shroomhearth:is_thundering store result score shroomhearth dayTime run time of minecraft:overworld query time

# when it is daytime and thundering, then force clear the weather so that the player can be woken up
execute if predicate shroomhearth:is_thundering unless score shroomhearth dayTime matches 12010..23992 run weather clear