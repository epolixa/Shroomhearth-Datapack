# Executes from the context of an Omen Ender Dragon that is initializing, at position 0 60 0 in the end.
# The position 0 60 0 is convenient for the sign paring trick since it is a bedrock block that a player cannot see from above.

setblock ~ ~ ~ minecraft:oak_sign
data modify block ~ ~ ~ front_text.messages[0] set value '[{"color":"#0b6138","text":"Omen "}, {"color":"#0b6138", "score": {"name": "@n[tag=omen_ender_dragon]", "objective": "omen_level"}, "font": "minecraft:illageralt", "hoverEvent": {"action": "show_text", "contents": {"score": {"name": "@n[tag=omen_ender_dragon]", "objective": "omen_level"}}}}, {"color":"#cc00fa","text":" Ender Dragon "}]'
data modify block ~ ~ ~ front_text.messages[1] set value '[{"color":"#cc00fa","text":" Ender Dragon "}]'
data modify entity @s CustomName set string block ~ ~ ~ front_text.messages[0]
data modify entity @s CustomName append string block ~ ~ ~ front_text.messages[1]
setblock ~ ~ ~ minecraft:bedrock