# Executes from the context of a player who is using a chorus kernel
tellraw @a[tag=debug_chorus_kernel] "Using Chorus Kernel..."

# Update the per-player storage with Chorus Kernel target data
function shroomhearth:capture_uuid
function chorus_kernel:m_modify_storage_player_chorus_kernel_target with storage shroomhearth:players temp_uuid
tellraw @a[tag=debug_chorus_kernel] "Updated player storage with Chorus Kernel target data"

# Revoke the advancement after a brief delay to prevent the storage from being updated every tick while the player is using the chorus kernel.
schedule function chorus_kernel:revoke_using_chorus_kernel 10t
tellraw @a[tag=debug_chorus_kernel] "Scheduled using chorus kernel advancement revocation"