# Executor: Player who consumed an Echoed Chorus Fruit
# Position: The player

tellraw @a[tag=debug_echo_kernel] [{"text":"[shroomhearth:echo_kernel/advancement_reward/consume_echoed_chorus_fruit] "},{"selector":"@s"},{"text":" consumed an Echoed Chorus Fruit"}]


# Revoke trigger
advancement revoke @s only shroomhearth:echo_kernel/consume_echoed_chorus_fruit

tag @s add consume_echoed_chorus_fruit

# Spawn an Echo Kernel item entity calibrated to the player's position
function shroomhearth:echo_kernel/create_echo_kernel

tag @s remove consume_echoed_chorus_fruit