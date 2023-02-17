# revoke trigger
advancement revoke @s only community:player_killed_threat

# increase harmony for threatened and saviour
execute if entity @a[tag=threatened,distance=0.1..16] run scoreboard players add @s harmony 1
execute as @a[tag=threatened,distance=0.1..16] run scoreboard players add @s harmony 1

# remove tag
tag @a[tag=threatened,distance=..16] remove threatened