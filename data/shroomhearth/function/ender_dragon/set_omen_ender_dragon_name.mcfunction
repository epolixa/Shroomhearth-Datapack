# Executor: an Omen Ender Dragon that is initializing
# Position: 0 60 0 in the end

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/set_omen_ender_dragon_name] Setting name of Omen Ender Dragon"}]


# Summon a temporary text display entity for component resolution
summon minecraft:text_display ~ ~ ~ {Tags:["ender_dragon_text_display"]}
data modify entity @n[tag=ender_dragon_text_display] text set value [{"color":"#16A6A6","text":"Ominous Ender Dragon "},{"score":{"name":"@n[tag=omen_ender_dragon]","objective":"omen_level"}}]
data modify entity @s CustomName set from entity @n[tag=ender_dragon_text_display] text
kill @n[tag=ender_dragon_text_display]