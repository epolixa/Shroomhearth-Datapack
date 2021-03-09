# perform actions when a player sleeps
execute as @a[nbt={SleepTimer:100s}] at @s run function sleeping:player_sleeping

# perform actions when a player wakes
execute as @a[nbt={SleepTimer:0s},scores={playerSleep=1..}] at @s run function sleeping:player_wake_up