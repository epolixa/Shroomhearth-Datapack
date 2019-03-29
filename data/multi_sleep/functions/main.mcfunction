################################################################
# Multiplayer Sleeping
# players in a bed make time advance faster
################################################################

# perform actions when a player sleeps
execute as @a[nbt={Sleeping:1b}] run function multi_sleep:sleep

# perform actions when a player wakes
execute as @a[nbt={Sleeping:0b}, scores={playerSleep=1..}] run function multi_sleep:wake