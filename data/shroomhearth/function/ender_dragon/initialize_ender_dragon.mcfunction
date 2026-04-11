# Executor: an Ender Dragon that has recently been summoned and not yet been initialized
# Position: The Ender Dragon

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/initialize_ender_dragon] Initializing Ender Dragon"}]


# Reset fight scores for all involved players
scoreboard players set @a[predicate=shroomhearth:ender_dragon/on_main_end_island] ender_dragon_stats_deaths 0
scoreboard players set @a[predicate=shroomhearth:ender_dragon/on_main_end_island] ender_dragon_stats_mobs 0
scoreboard players set @a[predicate=shroomhearth:ender_dragon/on_main_end_island] ender_dragon_stats_endermen 0
scoreboard players set @a[predicate=shroomhearth:ender_dragon/on_main_end_island] ender_dragon_stats_end_crystals 0
scoreboard players set @a[predicate=shroomhearth:ender_dragon/on_main_end_island] ender_dragon_stats_hits 0
scoreboard players set shroomhearth ender_dragon_stats_fight_time 0

# Calculate the Ender Dragon's omen_level and determine if it is an Omen Ender Dragon
function shroomhearth:ender_dragon/set_omen_level

# Reset non-omen Ender Dragon name
# For some reason the CustomName can carry over from a previously fought ender dragon
data modify entity @s[tag=!omen_ender_dragon] CustomName set value "Ender Dragon"

# Perform additional initialization steps for Omen Ender Dragons
execute as @s[tag=omen_ender_dragon] run function shroomhearth:ender_dragon/initialize_omen_ender_dragon

# Announce Ender Dragon
execute as @s[tag=!omen_ender_dragon] run tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]
execute as @s[tag=omen_ender_dragon] run tellraw @a [{"text":"The "}, {"color":"#0b6138","text":"Omen "}, {"color":"#0b6138", "score": {"name": "@s", "objective": "omen_level"}, "font": "minecraft:illageralt", "hover_event": {"action": "show_text", "value": {"score": {"name": "@s", "objective": "omen_level"}}}}, {"color":"#cc00fa","text":" Ender Dragon"}, {"text":" was summoned by "}, {"selector": "@p"}]

# tag dragon when done
tag @s add initialized