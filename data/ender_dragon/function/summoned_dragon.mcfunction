# Executes from the context of a player who just summoned the Ender Dragon

# announce
#tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]

# Reset dragonSlain since there is now an active Ender Dragon
scoreboard players set dragonSlain shroomhearth 0



# capture number of players
execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]



# Announce Ender Dragon
execute in minecraft:the_end positioned 0 64 0 as @n[type=minecraft:ender_dragon,tag=!omen_ender_dragon] run tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]
execute in minecraft:the_end positioned 0 64 0 as @n[tag=omen_ender_dragon] run tellraw @a [{"text":"The "}, {"color":"#0b6138","text":"Omen "}, {"color":"#0b6138", "score": {"name": "@s", "objective": "omen_level"}, "font": "minecraft:illageralt", "hoverEvent": {"action": "show_text", "contents": {"score": {"name": "@s", "objective": "omen_level"}}}}, {"color":"#cc00fa","text":" Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]

# revoke trigger
advancement revoke @s only ender_dragon:summoned_dragon