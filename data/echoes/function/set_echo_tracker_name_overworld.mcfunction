# executes from the context of a newly-summoned echo tracker at the position of a player who summoned it in the overworld

# temporarily tag target player
tag @p add echo_name

# resolve the player name in temporary sign text
setblock ~ -64 ~ minecraft:oak_sign
data modify block ~ -64 ~ front_text.messages[0] set value '{"selector":"@p[tag=echo_name]"}'

# set the name to echo tracker data from sign text
data modify entity @s data.echoesName set from block ~ -64 ~ front_text.messages[0]

# remove sign
setblock ~ -64 ~ minecraft:bedrock

# untag player
tag @p remove echo_name