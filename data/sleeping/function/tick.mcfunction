# capture SleepTimer
execute store result score @s sleepTimer run data get entity @s SleepTimer

# perform actions when a player sleeps
execute as @s[scores={sleepTimer=100}] run function sleeping:player_sleeping

# perform actions when a player wakes
execute as @s[scores={sleepTimer=101..}] run function sleeping:player_wake_up