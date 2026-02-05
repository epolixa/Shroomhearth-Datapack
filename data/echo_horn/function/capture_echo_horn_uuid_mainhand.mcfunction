# Executor: A player who started using an echo horn with the echo horn in their mainhand
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:capture_echo_horn_uuid_mainhand] "},{"selector":"@s"},{"text":" capturing UUID from mainhand Echo Horn"}]

# Capture UUID scores from echo horn timbre data
execute store result score @s echo_horn_uuid_1 run data get entity @s SelectedItem.components."minecraft:custom_data".timbre.UUID[0]
execute store result score @s echo_horn_uuid_2 run data get entity @s SelectedItem.components."minecraft:custom_data".timbre.UUID[1]
execute store result score @s echo_horn_uuid_3 run data get entity @s SelectedItem.components."minecraft:custom_data".timbre.UUID[2]
execute store result score @s echo_horn_uuid_4 run data get entity @s SelectedItem.components."minecraft:custom_data".timbre.UUID[3]