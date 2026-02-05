# Executes from the context of a player who just consumed a chorus kernel
tellraw @a[tag=debug_echo_kernel] "Consumed Echo Kernel..."
advancement revoke @s only echo_kernel:consume_echo_kernel

tag @s add consumed_echo_kernel

#execute summon minecraft:marker run function echo_kernel:teleport_consumer
function shroomhearth:score_uuid
function echo_kernel:m_set_echo_kernel_target with storage shroomhearth:players temp_uuid
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0.8
particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0.1 16
function echo_kernel:m_teleport_consumer with storage shroomhearth:echo_kernel target
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.2
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 16
#tellraw @a[tag=debug_echo_kernel] "Summoned teleport consumer marker"

tag @s remove consumed_echo_kernel