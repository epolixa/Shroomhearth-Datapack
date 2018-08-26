################################################################
# Multiplayer Sleeping
# players in a bed make time advance faster
################################################################

# add score for sleeping players
execute as @a[nbt={Sleeping:1b}] run scoreboard players add @s playerSleep 0
execute as @a[nbt={Sleeping:1b}, scores={playerSleep=..99}] run scoreboard players add @s playerSleep 1

# announce players entering/leaving their bed
execute as @a[nbt={Sleeping:1b}, scores={playerSleep=1}] run tellraw @a [{"selector":"@s"},{"text":"§r fell asleep"}]
execute as @a[nbt={Sleeping:0b}, scores={playerSleep=1..}] run tellraw @a [{"selector":"@s"},{"text":"§r woke up"}]

# reset score for woke players players
execute as @a[nbt={Sleeping:0b}, scores={playerSleep=1..}] run scoreboard players set @s playerSleep 0

# make night pass faster for each sleeping player 
execute as @a[nbt={Sleeping:1b}, scores={playerSleep=100}] run time add 8