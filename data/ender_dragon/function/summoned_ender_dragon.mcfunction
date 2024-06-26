# Executes from the context of a player who just summoned the Ender Dragon

# Revoke trigger
advancement revoke @s only ender_dragon:summoned_ender_dragon

# Reset dragonSlain since there is now an active Ender Dragon
scoreboard players set dragonSlain shroomhearth 0

# Capture initial number of players
execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]