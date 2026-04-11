# Grant advancement if another player is in the overworld while this player is sleeping
execute at @s if entity @p[distance=0.0625..] run advancement grant @s only shroomhearth:cooperative_sleep/slumber_party

# make night pass faster for sleeping players
time of minecraft:overworld add 10

# get and store time of day when it's thundering
execute if predicate shroomhearth:is_thundering store result score shroomhearth time run time of minecraft:overworld query time

# when it is daytime and thundering, then force clear the weather so that the player can be woken up
execute if predicate shroomhearth:is_thundering unless score shroomhearth time matches 12010..23992 run weather clear