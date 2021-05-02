# grant advancement if another player is also sleeping
execute at @s if entity @p[tag=sleeping,distance=1..] run advancement grant @s only sleeping:slumber_party

# make night pass faster for sleeping players
time add 10