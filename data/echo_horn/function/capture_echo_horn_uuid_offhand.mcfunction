# Executor: A player who started using an echo horn with the echo horn in their offhand
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:capture_echo_horn_uuid_offhand] "},{"selector":"@s"},{"text":" capturing UUID from offhand Echo Horn"}]

# Capture UUID scores from echo horn timbre data
execute store result score @s echo_horn_UUID1 run data get entity @s equipment.offhand.components."minecraft:custom_data".timbre.UUID[0]
execute store result score @s echo_horn_UUID2 run data get entity @s equipment.offhand.components."minecraft:custom_data".timbre.UUID[1]
execute store result score @s echo_horn_UUID3 run data get entity @s equipment.offhand.components."minecraft:custom_data".timbre.UUID[2]
execute store result score @s echo_horn_UUID4 run data get entity @s equipment.offhand.components."minecraft:custom_data".timbre.UUID[3]