# executes from the context of a newly-summoned echo tracker at the position of a player who summoned it outside the overworld

# temporarily tag target player
tag @p add echo_name

# resolve the player name in temporary sign text
setblock ~ 0 ~ minecraft:oak_sign
data modify block ~ 0 ~ front_text.messages[0] set value '{"selector":"@p[tag=echo_name]"}'

# set the name to echo tracker data from sign text
data modify entity @s data.echoesName set from block ~ -64 ~ front_text.messages[0]

# remove sign
execute unless dimension minecraft:the_end run setblock ~ 0 ~ minecraft:bedrock
execute if dimension minecraft:the_end run setblock ~ 0 ~ minecraft:air

# untag player
tag @p remove echo_name