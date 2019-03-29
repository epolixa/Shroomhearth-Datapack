# assert player has sleep delay score
scoreboard players add @s playerSleep 0

# announce when players start sleeping
execute as @s[scores={playerSleep=1}] run tellraw @a [{"selector":"@s"},{"text":"§r fell asleep"}]

# make night pass faster for sleeping players
execute as @s[scores={playerSleep=100}] run time add 8

# increment sleep delay
execute as @s[scores={playerSleep=..99}] run scoreboard players add @s playerSleep 1