# Revoke the advancement for using the chorus kernel.
# Scheduled to run one second after a player triggers the advancement.
advancement revoke @a only echo_kernel:using_echo_kernel
tellraw @a[tag=debug_echo_kernel] "Revoked using echo kernel advancement"