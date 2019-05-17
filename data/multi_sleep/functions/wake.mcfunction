# announce player woke up
execute as @s[scores={playerSleep=2}] run tellraw @a [{"selector":"@s"},{"text":"§r woke up"}]

# clear weather if morning
execute store result score @s wakeTime run time query daytime
execute as @s[scores={wakeTime=0..1000}] run weather clear

# reset score for woke players
scoreboard players set @s playerSleep 0