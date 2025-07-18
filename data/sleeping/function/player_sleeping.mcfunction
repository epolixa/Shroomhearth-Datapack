# grant advancement if another player is also sleeping
execute at @s if entity @p[tag=sleeping,distance=1..] run advancement grant @s only sleeping:slumber_party

# make night pass faster for sleeping players
time add 10

# get and store time of day when it's thundering
execute if predicate sleeping:is_thundering store result score shroomhearth dayTime run time query daytime

# when it is daytime and thundering, then force clear the weather so that the player can be woken up
execute if predicate sleeping:is_thundering if score shroomhearth dayTime matches 12010..23992 run weather clear