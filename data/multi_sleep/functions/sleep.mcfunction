# grant advancement if another player is sleeping
execute if entity @p[distance=1..,nbt={Sleeping:1b}] advancement grant @s[advancements={multi_sleep:multi_sleep=false}] only multi_sleep:multi_sleep

# assert player has sleep delay score
scoreboard players add @s playerSleep 0

# announce when players start sleeping
execute as @s[scores={playerSleep=1}] run tellraw @a [{"selector":"@s"},{"text":"§r fell asleep"}]

# grant advancement if another player is also sleeping
execute as @s[scores={playerSleep=100}] if entity @p[scores={playerSleep=100}, distance=1..] run advancement grant @s only multi_sleep:multi_sleep

# make night pass faster for sleeping players
execute as @s[scores={playerSleep=100}] run time add 8

# increment sleep delay
execute as @s[scores={playerSleep=..99}] run scoreboard players add @s playerSleep 1