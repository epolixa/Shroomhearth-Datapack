# Executes from the context of a player who just summoned the dragon

# announce
#tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]

# reset dragonSlain
scoreboard players set dragonSlain shroomhearth 0

# create bossbar
bossbar add ender_dragon:dragon_rage {"font":"minecraft:illageralt","bold":true,"text":"RAGE"}
bossbar set ender_dragon:dragon_rage color red
bossbar set ender_dragon:dragon_rage max 25
bossbar set ender_dragon:dragon_rage players @a[predicate=ender_dragon:on_main_end_island]
bossbar set ender_dragon:dragon_rage style progress
bossbar set ender_dragon:dragon_rage value 0
bossbar set ender_dragon:dragon_rage visible true

# capture number of players
execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]

# Calculate the dragon's omen_level
execute in minecraft:the_end positioned 0 64 0 as @n[type=minecraft:ender_dragon] at @s run function ender_dragon:set_omen_level

# Announce Dragon
execute in minecraft:the_end positioned 0 64 0 as @n[type=minecraft:ender_dragon,tag=!omen_ender_dragon] run tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]
execute in minecraft:the_end positioned 0 64 0 as @n[tag=omen_ender_dragon] run tellraw @a [{"text":"The "}, {"color":"#0b6138","text":"Omen "}, {"color":"#0b6138", "score": {"name": "@s", "objective": "omen_level"}, "font": "minecraft:illageralt", "hoverEvent": {"action": "show_text", "contents": {"score": {"name": "@s", "objective": "omen_level"}}}}, {"color":"#cc00fa","text":" Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]

# revoke trigger
advancement revoke @s only ender_dragon:summoned_dragon