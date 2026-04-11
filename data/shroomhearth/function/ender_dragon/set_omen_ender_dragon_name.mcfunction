# Executor: an Omen Ender Dragon that is initializing
# Position: 0 60 0 in the end

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/set_omen_ender_dragon_name] Setting name of Omen Ender Dragon"}]


# Summon a temporary text display entity for component resolution
summon minecraft:text_display ~ ~ ~ {Tags:["ender_dragon_text_display"]}
data modify entity @n[tag=ender_dragon_text_display] text set value [{"color":"#0b6138","text":"Omen "}, {"color":"#0b6138", "score": {"name": "@n[tag=omen_ender_dragon]", "objective": "omen_level"}, "font": "minecraft:illageralt", "hover_event": {"action": "show_text", "value": {"score": {"name": "@n[tag=omen_ender_dragon]", "objective": "omen_level"}}}}, {"color":"#cc00fa","text":" Ender Dragon "}]
data modify entity @s CustomName set from entity @n[tag=ender_dragon_text_display] text
data modify entity @n[tag=lore_printer_text_display] text set value [{"color":"#cc00fa","text":" Ender Dragon "}]
data modify entity @s CustomName append from entity @n[tag=ender_dragon_text_display] text
kill @n[tag=ender_dragon_text_display]