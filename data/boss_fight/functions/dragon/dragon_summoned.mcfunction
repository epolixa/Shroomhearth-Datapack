# reset dragonDeaths for all involved players
execute positioned 0 64 0 run scoreboard players set @a[distance=..128] dragonDeaths 0

# summon end crystal marker armor stands
# 90y is average height of obsidian spikes
summon minecraft:armor_stand -34 90 -25 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand -13 90 -40 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 12 90 -40 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 33 90 -25 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 42 90 0 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 33 90 24 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 12 90 39 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand -13 90 39 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand -34 90 24 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand -42 90 -1 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}

# set armor stands to end crystal positions
execute as @e[type=minecraft:armor_stand,tag=crystal_marker] at @s run tp @s @e[type=minecraft:end_crystal,limit=1,sort=nearest]

# summon mob summon armor stands for player count + 1
execute positioned 0 64 0 as @a[distance=..128] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["summon_marker"],Marker:1b,Invulnerable:1b,Invisible:1b}
execute positioned 0 64 0 as @r[distance=..128] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["summon_marker"],Marker:1b,Invulnerable:1b,Invisible:1b}

# initialize dragon health...
# capture number of players
execute store result score dragonPlayers shroomhearth if entity @a[distance=..128]
# adapt max health to 200+((N-1)*50)
function boss_fight:dragon/adapt_max_health
# copy max health to health
data modify entity @s Health set from entity @s Attributes[{"Name":"minecraft:generic.max_health"}].Base

# tag dragon when done
tag @s add summoned