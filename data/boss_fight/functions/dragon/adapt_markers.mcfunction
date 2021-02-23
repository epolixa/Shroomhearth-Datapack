# summon at least one marker if none can be found
execute unless entity @e[type=minecraft:armor_stand,tag=summon_marker] at @a[distance=..200] run summon minecraft:armor_stand ~ ~ ~ {Tags:["summon_marker"],Marker:1b,Invulnerable:1b,Invisible:1b}

# capture number of players
execute store result score bityard dragonPlayers if entity @a[distance=..200]

# capture number of markers
execute store result score bityard summonMarkers if entity @e[type=minecraft:armor_stand,tag=summon_marker]

# summon extra marker if there are more players
execute if score bityard dragonPlayers >= bityard summonMarkers at @e[type=minecraft:armor_stand,tag=summon_marker,limit=1,sort=random] run summon minecraft:armor_stand ~ ~ ~ {Tags:["summon_marker"],Marker:1b,Invulnerable:1b,Invisible:1b}