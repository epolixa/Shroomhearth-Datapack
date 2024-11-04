# Executes from the context of a player who just consumed a chorus kernel
tellraw @a[tag=debug_chorus_kernel] "Consumed Chorus Kernel..."
advancement revoke @s only chorus_kernel:consume_chorus_kernel

tag @s add consumed_chorus_kernel

#execute summon minecraft:marker run function chorus_kernel:teleport_consumer
function shroomhearth:capture_uuid
function chorus_kernel:m_set_chorus_kernel_target with storage shroomhearth:players temp_uuid
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0.8
particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0.1 16
function chorus_kernel:m_teleport_consumer with storage shroomhearth:chorus_kernel target
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.2
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 16
#tellraw @a[tag=debug_chorus_kernel] "Summoned teleport consumer marker"

tag @s remove consumed_chorus_kernel