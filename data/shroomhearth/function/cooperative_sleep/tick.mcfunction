# capture SleepTimer
execute store result score @s sleep_timer run data get entity @s SleepTimer

# perform actions when a player sleeps
execute as @s[scores={sleep_timer=100}] run function shroomhearth:cooperative_sleep/player_sleeping

# perform actions when a player wakes
execute as @s[scores={sleep_timer=101..}] run function shroomhearth:cooperative_sleep/player_wake_up