# Executes from the context of a player who is using a chorus kernel
tellraw @a[tag=debug_echo_kernel] "Using Echo Kernel..."

# Update the per-player storage with Chorus Kernel target data
function shroomhearth:score_uuid
function echo_kernel:m_modify_storage_player_echo_kernel_target with storage shroomhearth:players temp_uuid
tellraw @a[tag=debug_echo_kernel] "Updated player storage with Echo Kernel target data"

# Revoke the advancement after a brief delay to prevent the storage from being updated every tick while the player is using the chorus kernel.
schedule function echo_kernel:revoke_using_echo_kernel 10t
tellraw @a[tag=debug_echo_kernel] "Scheduled using echo kernel advancement revocation"