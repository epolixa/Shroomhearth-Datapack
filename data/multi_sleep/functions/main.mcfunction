################################################################
# Multiplayer Sleeping
# players in a bed make time advance faster
################################################################

# perform actions when a player sleeps
execute as @a[nbt={SleepTimer:100s}] at @s run function multi_sleep:sleep

# perform actions when a player wakes
execute as @a[nbt={SleepTimer:0s}, scores={playerSleep=1..}] at @s run function multi_sleep:wake