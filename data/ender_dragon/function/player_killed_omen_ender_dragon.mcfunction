# Executes from the context of a player that has killed an Omen Ender Dragon

# revoke advancement
advancement revoke @s only ender_dragon:player_killed_omen_ender_dragon

# grant advancement for slaying omen ender dragon
advancement grant @a[predicate=ender_dragon:on_main_end_island] only ender_dragon:ominous_power

# remove bossbar
bossbar remove ender_dragon:dragon_rage

# kill end crystal marker armor stands
kill @e[type=minecraft:armor_stand,tag=crystal_marker]

# kill all power targets (if any remain)
kill @e[tag=power_target]

# kill all gravity entities
kill @e[tag=dragon_gravity]


# fix for slimes that didn't inherit tags
tag @e[type=#ender_dragon:slimes,predicate=ender_dragon:on_main_end_island] add dragon_thrall

# fix for slimes so they don't make smaller ones when they die
execute as @e[type=#ender_dragon:slimes,tag=dragon_thrall] run data merge entity @s {Size:0}

# kill all dragon summons
kill @e[tag=dragon_thrall]
kill @e[tag=dragon_distortion]

# capture number of players and grant legendary battle advancement if alone
execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]
execute if score @n[tag=omen_ender_dragon] omen_level matches 5.. if score dragonPlayers shroomhearth matches 1 if score favActive shroomhearth matches 0 run advancement grant @s[scores={dragStatDeaths=0}] only ender_dragon:legendary_battle

# kickoff checks for dissolve
function ender_dragon:check_dissolved