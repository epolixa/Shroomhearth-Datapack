# Executes from the context of an omen ender dragon that is calculating its ominous level

setblock ~ ~ ~ minecraft:oak_sign
data modify block ~ ~ ~ front_text.messages[0] set value '[{"color":"#0b6138","text":"Omen "}, {"color":"#0b6138", "score": {"name": "@n[tag=omen_ender_dragon]", "objective": "ominous_level"}, "font": "minecraft:illageralt", "hoverEvent": {"action": "show_text", "contents": {"score": {"name": "@n[tag=omen_ender_dragon]", "objective": "ominous_level"}}}}, {"color":"#cc00fa","text":" Ender Dragon "}]'
data modify block ~ ~ ~ front_text.messages[1] set value '[{"color":"#cc00fa","text":" Ender Dragon "}]'
data modify entity @n[tag=omen_ender_dragon] CustomName set string block ~ ~ ~ front_text.messages[0]
data modify entity @n[tag=omen_ender_dragon] CustomName append string block ~ ~ ~ front_text.messages[1]
setblock ~ ~ ~ minecraft:bedrock