# reset fight scores for all involved players
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragonDeaths 0
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragStatMobs 0
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragStatEndermen 0
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragStatCrystals 0
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragStatHits 0
scoreboard players set shroomhearth dragStatSlayTime 0
scoreboard players set @a[predicate=ender_dragon:on_main_end_island] dragonDeaths 0

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

# initialize dragon health...
# capture number of players
execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]
# adapt max health to 200+((N-1)*50)
function ender_dragon:adapt_max_health
# copy max health to health
data modify entity @s Health set from entity @s Attributes[{"Name":"minecraft:generic.max_health"}].Base

# tag dragon when done
tag @s add summoned