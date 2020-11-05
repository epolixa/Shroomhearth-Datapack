# assert player has sleep delay score
scoreboard players add @s playerSleep 0

# announce when players start sleeping
execute as @s[scores={playerSleep=1}] run tellraw @a [{"color":"yellow"},{"selector":"@s"},{"text":" fell asleep"}]

# grant advancement if another player is also sleeping
execute as @s[scores={playerSleep=1..},advancements={multi_sleep:multi_sleep=false}] if entity @p[scores={playerSleep=1..}, distance=1..] run advancement grant @s only multi_sleep:multi_sleep

# make night pass faster for sleeping players
execute as @s[scores={playerSleep=1..}] run time add 10

# increment sleep flag
execute as @s[scores={playerSleep=..1}] run scoreboard players add @s playerSleep 1