# announcement
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]

# increment total dragons slain for each player involved
scoreboard players add @a[predicate=ender_dragon:on_main_end_island] dragStatTotalSlain 1

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

# capture number of players
execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]

# capture number of summon markers
execute store result score shroomhearth summonMarkers if entity @e[type=minecraft:armor_stand,tag=summon_marker]

# kill summon markers
kill @e[type=minecraft:armor_stand,tag=summon_marker]

# fix for slimes that didn't inherit tags
tag @e[type=#ender_dragon:slimes,predicate=ender_dragon:on_main_end_island] add dragon_summon

# fix for slimes so they don't make smaller ones when they die
execute as @e[type=#ender_dragon:slimes,tag=dragon_summon] run data merge entity @s {Size:0}

# kill all dragon summons
kill @e[tag=dragon_summon]

# setblock dragon egg at pedestal
execute unless block 0 65 0 minecraft:dragon_egg run setblock 0 65 0 minecraft:dragon_egg

# grant endchantments for all players in range to equipment in priority: mainhand, offhand, helmet, chestplate, leggings, boots
execute as @a[predicate=ender_dragon:on_main_end_island] run function endchant:attune

# give 10*n harmony to each player in a group
execute if score dragonPlayers shroomhearth matches 2.. as @a[predicate=ender_dragon:on_main_end_island] run scoreboard players add @a[predicate=ender_dragon:on_main_end_island] harmony 10

# grant solo kill advancement
execute unless entity @p[predicate=ender_dragon:on_main_end_island,distance=0.1..] if score dragonPlayers shroomhearth matches ..1 run advancement grant @s[scores={dragonDeaths=0}] only ender_dragon:legendary_battle

# remove all summoned crying obsidian pillars
function ender_dragon:cleanup_pillars

# remove all transmuted blocks
function ender_dragon:cleanup_transmutes

# revoke advancement
advancement revoke @s only ender_dragon:player_killed_dragon