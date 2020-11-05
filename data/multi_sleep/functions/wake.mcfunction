# announce player woke up
execute as @s[scores={playerSleep=2}] run tellraw @a [{"color":"yellow"},{"selector":"@s"},{"text":" woke up"}]

# clear weather if morning
execute store result score @s wakeTime run time query daytime
execute as @s[scores={wakeTime=23000..24000}] run weather rain 1

# reset score for woke players
scoreboard players set @s playerSleep 0