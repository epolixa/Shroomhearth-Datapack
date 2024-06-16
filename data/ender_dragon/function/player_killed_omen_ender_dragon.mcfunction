# revoke advancement
advancement revoke @s only ender_dragon:player_killed_omen_ender_dragon

# announcement
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]

# increment hit stat
scoreboard players add @s dragStatHits 1

# increment total dragons slain for each player involved
scoreboard players add @a[predicate=ender_dragon:on_main_end_island] dragStatTotalSlain 1

# grant advancement for slaying omen ender dragon
advancement grant @a[predicate=ender_dragon:on_main_end_island] only ender_dragon:ominous_power

# grant laura advancement if slain 20 dragons
advancement grant @a[scores={dragStatTotalSlain=20..}] only player_advancements:lalalauraaaa

# capture stats for slay time
scoreboard players set dragStatSlayTimeSec shroomhearth 60
scoreboard players operation dragStatSlayTimeMin shroomhearth = dragStatSlayTime shroomhearth
scoreboard players operation dragStatSlayTimeMin shroomhearth /= dragStatSlayTimeSec shroomhearth
scoreboard players operation dragStatSlayTimeSec shroomhearth *= dragStatSlayTimeMin shroomhearth
scoreboard players operation dragStatSlayTime shroomhearth -= dragStatSlayTimeSec shroomhearth

# tell stats to enabled players
execute as @a[predicate=ender_dragon:on_main_end_island,scores={dragStatEnabled=1..}] run function ender_dragon:tell_stats

# remove bossbar
bossbar remove ender_dragon:dragon_rage

# set dragonSlain
scoreboard players set dragonSlain shroomhearth 1

# kill end crystal marker armor stands
kill @e[type=minecraft:armor_stand,tag=crystal_marker]

# kill all power targets (if any remain)
kill @e[tag=power_target]

# kill all gravity entities
kill @e[tag=dragon_gravity]

# capture number of players
execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]

# fix for slimes that didn't inherit tags
tag @e[type=#ender_dragon:slimes,predicate=ender_dragon:on_main_end_island] add dragon_thrall

# fix for slimes so they don't make smaller ones when they die
execute as @e[type=#ender_dragon:slimes,tag=dragon_thrall] run data merge entity @s {Size:0}

# kill all dragon summons
kill @e[tag=dragon_thrall]
kill @e[tag=dragon_distortion]

# give 10 harmony to each other player in a group
execute as @a[predicate=ender_dragon:on_main_end_island] at @s run scoreboard players add @a[predicate=ender_dragon:on_main_end_island,distance=0.1..] harmony 8

# grant legendary battle advancement
execute if score @n[tag=omen_ender_dragon] omen_level matches 5.. if score dragonPlayers shroomhearth matches 1 if score favActive shroomhearth matches 0 run advancement grant @s[scores={dragStatDeaths=0}] only ender_dragon:legendary_battle

# remove all summoned crying obsidian pillars
function ender_dragon:powers/pillar/cleanup_pillars

# remove all transmuted blocks
function ender_dragon:powers/transmute/cleanup_transmutes

# kickoff checks for dissolve
function ender_dragon:check_dissolved