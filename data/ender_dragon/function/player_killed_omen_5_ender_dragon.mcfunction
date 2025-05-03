# revoke advancement
advancement revoke @s only ender_dragon:player_killed_omen_5_ender_dragon

# capture number of players and grant legendary battle advancement if still alone
execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]
execute if score dragonPlayers shroomhearth matches 1 if score favActive shroomhearth matches 0 run advancement grant @s[scores={dragStatDeaths=0}] only ender_dragon:legendary_battle