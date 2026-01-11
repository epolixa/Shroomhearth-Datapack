# Executor: A player who has successfully teleported using an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:break_echo_horn] "},{"selector":"@s"},{"text":" echo horn has broken"}]


# Remove the echo horn from the player's main hand
execute if entity @s[tag=using_echo_horn_mainhand] run item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[tag=using_echo_horn_offhand] run item replace entity @s weapon.offhand with minecraft:air

# Sound effects and particles for breaking
playsound minecraft:entity.item.break player
particle minecraft:item{item:{id:"minecraft:goat_horn",components:{"minecraft:item_model":"shroomhearth:echo_horn"}}} ~ ~1 ~ 0.25 0.25 0.25 0 4