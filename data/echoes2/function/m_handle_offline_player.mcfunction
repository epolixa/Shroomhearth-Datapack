# Executor: Server
# Position: Root
# Data: Target player data, determined as offline

tellraw @a[tag=debug_echoes2] "[echoes.m_handle_offline_player] $(name) is offline."

# Summon a new echoes interaction entity
$execute in $(dimension) \
positioned $(x) $(y) $(z) \
run summon minecraft:interaction ~ ~0.8 ~ {\
Tags:["echoes_interaction","echoes_new"],\
data:{player:{uuid:$(uuid),name:$(name)},visitors:[]},\
height:0.25,width:0.25\
}

# Play particles
execute at @n[tag=echoes_new] run particle minecraft:soul_fire_flame ~ ~0.125 ~ 0.0625 0.125 0.0625 0.0625 4

# Remove temporary new echoes tag
tag @n[tag=echoes_new] remove echoes_new

# Mark the player to be removed in the storage list
$data modify storage shroomhearth:echoes players[{uuid:$(uuid)}].remove set value true