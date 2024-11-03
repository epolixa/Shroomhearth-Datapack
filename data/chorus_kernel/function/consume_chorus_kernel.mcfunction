# Executes from the context of a player who just consumed a chorus kernel
tellraw @a[tag=debug_chorus_kernel] "Consumed Chorus Kernel..."
advancement revoke @s only chorus_kernel:consume_chorus_kernel

tag @s add consumed_chorus_kernel

#execute summon minecraft:marker run function chorus_kernel:teleport_consumer
function shroomhearth:capture_uuid
function chorus_kernel:m_set_chorus_kernel_target with storage shroomhearth:players temp_uuid
function chorus_kernel:m_teleport_consumer with storage shroomhearth:chorus_kernel target
#tellraw @a[tag=debug_chorus_kernel] "Summoned teleport consumer marker"

tag @s remove consumed_chorus_kernel