# summon at least one marker if none can be found
execute unless entity @e[type=minecraft:armor_stand,tag=summon_marker] at @a[predicate=ender_dragon:on_main_end_island] run summon minecraft:armor_stand ~ ~ ~ {Tags:["summon_marker"],Marker:1b,Invulnerable:1b,Invisible:1b}

# capture number of markers
execute store result score summonMarkers shroomhearth if entity @e[type=minecraft:armor_stand,tag=summon_marker]

# summon extra marker if there are more players
execute if score dragonPlayers shroomhearth >= summonMarkers shroomhearth at @e[type=minecraft:armor_stand,tag=summon_marker,limit=1,sort=random] run summon minecraft:armor_stand ~ ~ ~ {Tags:["summon_marker"],Marker:1b,Invulnerable:1b,Invisible:1b}