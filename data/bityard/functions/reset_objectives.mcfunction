# playerCount - number of online players
scoreboard players set Env playerCount 0

# playerSneak - reset to 0 every tick while sneaking
execute as @a[scores={playerSneak=1..}] run scoreboard players set @s playerSneak 0

# playerJump - reset to 0 every tick
execute as @a[scores={playerJump=1..}] run scoreboard players set @s playerJump 0

# rng - reset to 0 after 9 ticks
execute as @a[scores={rng=9..}] at @s run scoreboard players set @s rng 0