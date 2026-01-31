# Executes from the context of a player that kills any Ender Dragon

# revoke advancement
advancement revoke @s only ender_dragon:player_killed_ender_dragon

# announcement
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]

# increment hit stat
scoreboard players add @s dragStatHits 1

# increment total dragons slain for each player involved
scoreboard players add @a[predicate=ender_dragon:on_main_end_island] dragStatTotalSlain 1

# grant laura advancement if slain 20 dragons
advancement grant @a[scores={dragStatTotalSlain=20..}] only challenges:lalalauraaaa

# capture stats for slay time
scoreboard players set dragStatSlayTimeSec shroomhearth 60
scoreboard players operation dragStatSlayTimeMin shroomhearth = dragStatSlayTime shroomhearth
scoreboard players operation dragStatSlayTimeMin shroomhearth /= dragStatSlayTimeSec shroomhearth
scoreboard players operation dragStatSlayTimeSec shroomhearth *= dragStatSlayTimeMin shroomhearth
scoreboard players operation dragStatSlayTime shroomhearth -= dragStatSlayTimeSec shroomhearth

# tell stats to enabled players
execute as @a[predicate=ender_dragon:on_main_end_island,scores={dragStatEnabled=1..}] run function ender_dragon:tell_stats

# set dragonSlain
scoreboard players set dragonSlain shroomhearth 1

# give harmony to each other participating player
execute as @a[predicate=ender_dragon:on_main_end_island] at @s run scoreboard players add @a[predicate=ender_dragon:on_main_end_island,distance=0.1..] harmony 8