# Revoke the advancement for using the chorus kernel.
# Scheduled to run one second after a player triggers the advancement.
advancement revoke @a only chorus_kernel:using_chorus_kernel
tellraw @a[tag=debug_chorus_kernel] "Revoked using chorus kernel advancement"